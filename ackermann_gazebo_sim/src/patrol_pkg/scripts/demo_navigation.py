#!/usr/bin/env python

import rospy
import math
from geometry_msgs.msg import PoseStamped, PoseWithCovarianceStamped
from nav_msgs.msg import Odometry

class NavigationNode:
    def __init__(self):
        rospy.init_node('demo_navigation', anonymous=True)
        self.goal_pub = rospy.Publisher('/move_base_simple/goal', PoseStamped, queue_size=1)
        self.current_x = 0
        self.current_y = 0
        self.goal_reached = False
        self.distance_threshold = 0.5  # 到达目标点的阈值（米）

        # 订阅机器人位置
        rospy.Subscriber('/amcl_pose', PoseWithCovarianceStamped, self.pose_callback)

    def pose_callback(self, data):
        self.current_x = data.pose.pose.position.x
        self.current_y = data.pose.pose.position.y

    def get_distance_to_goal(self, goal_x, goal_y):
        return math.sqrt((self.current_x - goal_x) ** 2 + (self.current_y - goal_y) ** 2)

    def send_goal(self, x, y, z, w):
        goal = PoseStamped()
        goal.header.frame_id = "map"
        goal.header.stamp = rospy.Time.now()
        
        goal.pose.position.x = x
        goal.pose.position.y = y
        goal.pose.position.z = 0.0
        
        goal.pose.orientation.x = 0.0
        goal.pose.orientation.y = 0.0
        goal.pose.orientation.z = z
        goal.pose.orientation.w = w
        
        self.goal_pub.publish(goal)
        rospy.loginfo(f"发送目标点: x={x}, y={y}")

    def wait_for_goal(self, x, y, timeout=30):
        rate = rospy.Rate(10)  # 10Hz
        start_time = rospy.Time.now()
        
        while not rospy.is_shutdown():
            if self.get_distance_to_goal(x, y) < self.distance_threshold:
                rospy.loginfo(f"到达目标点: x={x}, y={y}")
                return True
                
            if (rospy.Time.now() - start_time).to_sec() > timeout:
                rospy.logwarn(f"未能在{timeout}秒内到达目标点")
                return False
                
            rate.sleep()

    def navigate(self):
        # 等待导航系统就绪
        rospy.sleep(2)
        
        # 导航序列
        waypoints = [
            # x, y, z(orientation), w(orientation)
            (-2.0, 1.0, 0.707, 0.707),    # 左前方
            (2.0, 7.0, 0.707, 0.707),     # 走廊中间
            (-6.0, 0.0, 0.0, 1.0),        # 左侧空地
            (0.0, -10.0, -0.707, 0.707),  # 下方空地
            (13.0, 0.0, 1.0, 0.0),        # 右侧空地
            (0.0, 13.0, 0.707, 0.707)     # 上方空地
        ]

        for i, (x, y, z, w) in enumerate(waypoints, 1):
            rospy.loginfo(f"导航到第{i}个目标点")
            self.send_goal(x, y, z, w)
            if not self.wait_for_goal(x, y):
                rospy.logwarn("导航失败，继续下一个目标点")
            rospy.sleep(1)  # 短暂等待以确保稳定

def main():
    try:
        navigator = NavigationNode()
        navigator.navigate()
    except rospy.ROSInterruptException:
        pass

if __name__ == '__main__':
    main()

