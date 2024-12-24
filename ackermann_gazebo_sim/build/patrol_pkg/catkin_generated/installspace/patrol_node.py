#!/usr/bin/env python3
#-*- coding: utf-8 -*-

import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from geometry_msgs.msg import PoseStamped
from tf.transformations import quaternion_from_euler

class PatrolNode:
    def __init__(self):
        """初始化巡逻节点"""
        rospy.init_node('patrol_node')
        
        # 加载配置
        self.load_config()
        
        # 获取命名空间
        ns = rospy.get_namespace()
        move_base_name = rospy.get_param('~move_base_name', '/move_base')
    
        rospy.loginfo("Node namespace: %s", ns)
        rospy.loginfo("Using move_base: %s", move_base_name)
        
        # 初始化导航客户端
        self.move_base_client = actionlib.SimpleActionClient(move_base_name, MoveBaseAction)
        if not self.move_base_client.wait_for_server(rospy.Duration(10.0)):
            rospy.logerr("Move base action server not available!")
            return
         
        # 初始化发布者(用于兼容原有系统)          
        goal_topic = rospy.get_param('~move_base_simple_topic', '/move_base_simple/goal')
        self.goal_pub = rospy.Publisher(goal_topic, PoseStamped, queue_size=1)            
        
        # 状态变量
        self.current_point_index = 0
        self.is_active = False
        self.retry_count = 0
        
        rospy.loginfo("Patrol node initialized successfully")
        
        # 如果配置为自动启动，则开始巡逻
        if self.config['behavior']['auto_start']:
            self.start()



    def create_goal_msg(self, point):
        """创建导航目标消息"""
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = self.config['navigation']['frame_id']
        goal.target_pose.header.stamp = rospy.Time.now()
        
        # 设置位置和方向
        goal.target_pose.pose.position.x = point[0]
        goal.target_pose.pose.position.y = point[1]
        goal.target_pose.pose.position.z = 0.0
        
        q = quaternion_from_euler(0, 0, point[2])
        goal.target_pose.pose.orientation.x = q[0]
        goal.target_pose.pose.orientation.y = q[1]
        goal.target_pose.pose.orientation.z = q[2]
        goal.target_pose.pose.orientation.w = q[3]
        
        return goal

    def send_goal(self, point_index):
        """发送导航目标"""
        if point_index >= len(self.config['points']):
            return False
            
        point = self.config['points'][point_index]
        goal = self.create_goal_msg(point)
        
        # 发布到 move_base_simple/goal (兼容原有系统)
        pose_stamped = PoseStamped()
        pose_stamped.header = goal.target_pose.header
        pose_stamped.pose = goal.target_pose.pose
        self.goal_pub.publish(pose_stamped)
        
        # 使用 action 接口发送目标
        self.move_base_client.send_goal(
            goal,
            done_cb=self.goal_done_callback,
            feedback_cb=self.goal_feedback_callback
        )
        
        rospy.loginfo("Sending goal {}/{}: {}".format(point_index + 1, len(self.config['points']), point))
        return True

    def goal_done_callback(self, status, result):
        """目标完成回调"""
        if not self.is_active:
            return
            
        if status == actionlib.GoalStatus.SUCCEEDED:
            rospy.loginfo("Goal {} reached".format(self.current_point_index + 1))
            self.retry_count = 0
            rospy.sleep(self.config['behavior']['pause_time'])
            self.move_to_next_point()
        else:
            rospy.logwarn("Goal failed with status: {}".format(status))
            self.handle_failure()

    def goal_feedback_callback(self, feedback):
        """目标反馈回调"""
        pass  # 可以添加进度显示或状态记录

    def load_config(self):
        """从参数服务器加载配置"""
        try:
            # 从参数服务器获取配置
            self.config = {
                'points': rospy.get_param('~points', [[0.0, 0.0, 0.0]]),
                'navigation': {
                    'frame_id': rospy.get_param('~frame_id', 'map'),
                    'goal_tolerance': rospy.get_param('~goal_tolerance', 0.5),
                    'wait_duration': rospy.get_param('~wait_duration', 5.0),
                    'retry_attempts': rospy.get_param('~retry_attempts', 3)
                },
                'behavior': {
                    'loop_patrol': rospy.get_param('~loop_patrol', True),
                    'pause_time': rospy.get_param('~pause_time', 2.0),
                    'auto_start': rospy.get_param('~auto_start', True)
                }
            }
            rospy.loginfo("Configuration loaded successfully")
        except Exception as e:
            rospy.logerr("Failed to load config: {}".format(str(e)))
            self.config = {
                'points': [[0.0, 0.0, 0.0]],
                'navigation': {
                    'frame_id': 'map',
                    'goal_tolerance': 0.5,
                    'wait_duration': 5.0,
                    'retry_attempts': 3
                },
                'behavior': {
                    'loop_patrol': True,
                    'pause_time': 2.0,
                    'auto_start': True
                }
            }



    def handle_failure(self):
        """处理导航失败情况"""
        if self.retry_count < self.config['navigation']['retry_attempts']:
            self.retry_count += 1
            rospy.logwarn("Retrying goal {} (attempt {})".format(self.current_point_index + 1, self.retry_count))
            self.send_goal(self.current_point_index)
        else:
            rospy.logerr("Failed to reach goal {} after {} attempts".format(self.current_point_index + 1, self.retry_count))
            self.retry_count = 0
            self.move_to_next_point()

    def move_to_next_point(self):
        """移动到下一个巡逻点"""
        if not self.is_active:
            return
            
        self.current_point_index += 1
        if self.current_point_index >= len(self.config['points']):
            if self.config['behavior']['loop_patrol']:
                self.current_point_index = 0
            else:
                rospy.loginfo("Patrol completed")
                self.stop()
                return
                
        self.send_goal(self.current_point_index)

    def start(self):
        """开始巡逻"""
        if not self.is_active and len(self.config['points']) > 0:
            self.is_active = True
            self.current_point_index = 0
            self.retry_count = 0
            self.send_goal(self.current_point_index)
            rospy.loginfo("Patrol started")

    def stop(self):
        """停止巡逻"""
        if self.is_active:
            self.is_active = False
            self.move_base_client.cancel_all_goals()
            rospy.loginfo("Patrol stopped")

    def pause(self):
        """暂停巡逻"""
        if self.is_active:
            self.is_active = False
            self.move_base_client.cancel_goal()
            rospy.loginfo("Patrol paused")

    def resume(self):
        """恢复巡逻"""
        if not self.is_active:
            self.is_active = True
            self.send_goal(self.current_point_index)
            rospy.loginfo("Patrol resumed")

def main():
    try:
        node = PatrolNode()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass

if __name__ == '__main__':
    main()

