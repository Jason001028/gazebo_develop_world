当前文件树：
wang@wang-Legion-Y7000P-2019:/media/wang/机械硬盘2t/转码资料合集/阿克曼四轮模型
类/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src$ tree
.
├── car_monitor
│   ├── CMakeLists.txt
│   ├── config
│   │   └── car_monitor.yaml
│   ├── include
│   │   ├── allstructs.h
│   │   └── radiocomm.h
│   ├── launch
│   │   └── monitor.launch
│   ├── msg
│   │   ├── CarRank.msg
│   │   ├── Goal.msg
│   │   └── Gps.msg
│   ├── package.xml
│   ├── rviz_config
│   │   └── monitor.rviz
│   ├── src
│   │   └── radiocomm.cpp
│   └── urdf
│       └── racecar.xacro
├── CMakeLists.txt -> /opt/ros/noetic/share/catkin/cmake/toplevel.cmake
├── patrol_pkg
│   ├── CMakeLists.txt
│   ├── launch
│   │   ├── demo.launch
│   │   └── patrol.launch
│   ├── package.xml
│   ├── README.txt
│   └── scripts
│       ├── demo_navigation1.sh
│       ├── demo_navigation2.sh
│       ├── demo_navigation3.sh
│       ├── demo_navigation.py
│       └── patrol_node.py
├── racebot_control
│   ├── CMakeLists.txt
│   ├── config
│   │   └── racebot_control.yaml
│   ├── launch
│   │   ├── gazebo_sim_joy.launch
│   │   ├── racebot_control.launch
│   │   └── teleop.launch
│   ├── package.xml
│   └── script
│       ├── gazebo_odometry.py
│       ├── keyboard_teleop.py
│       ├── servo_commands.py
│       └── transform.py
├── racebot_description
│   ├── CMakeLists.txt
│   ├── config
│   │   ├── joint_names_racebot_description.yaml
│   │   └── smart_control_config.yaml
│   ├── launch
│   │   ├── control.launch
│   │   ├── racebot_rviz.launch
│   │   ├── racecar_gazebo.launch
│   │   ├── racecar_xacro.launch
│   │   └── tianracer_rviz.launch
│   ├── meshes
│   │   ├── base_link.STL
│   │   ├── camera.STL
│   │   ├── laser.STL
│   │   ├── left_front_wheel.STL
│   │   ├── left_rear_wheel.STL
│   │   ├── left_steering_hinge.STL
│   │   ├── real_sense.STL
│   │   ├── right_front_wheel.STL
│   │   ├── right_rear_wheel.STL
│   │   └── right_steering_hinge.STL
│   ├── package.xml
│   ├── rviz_config
│   │   ├── racecar.rviz
│   │   └── smart.rviz
│   ├── scripts
│   │   ├── cmdvel2gazebo.py
│   │   ├── teleop_racebot.py
│   │   ├── transform_publisher.py
│   │   └── vehicle_pose_and_velocity_updater.py
│   └── urdf
│       ├── ackermann
│       │   ├── macros.xacro
│       │   ├── racecar.gazebo
│       │   └── racecar.xacro
│       ├── racebot.urdf
│       ├── tianracer
│       │   ├── macros.xacro
│       │   ├── racecar.gazebo
│       │   └── tianracer.xacro
│       └── twist
│           ├── macros.xacro
│           ├── racecar.gazebo
│           └── racecar.xacro
├── racebot_gazebo
│   ├── CMakeLists.txt
│   ├── config
│   │   ├── dwa
│   │   │   ├── costmap_common_params.yaml
│   │   │   ├── dwa_local_planner_params.yaml
│   │   │   ├── global_costmap_params.yaml
│   │   │   ├── global_planner_params.yaml
│   │   │   └── local_costmap_params.yaml
│   │   ├── keyboard_teleop.yaml
│   │   └── teb
│   │       ├── base_global_planner_params.yaml
│   │       ├── costmap_common_params.yaml
│   │       ├── global_costmap_params.yaml
│   │       ├── local_costmap_params.yaml
│   │       ├── move_base_params.yaml
│   │       └── teb_local_planner_params.yaml
│   ├── fine_map.pgm
│   ├── fine_map.yaml
│   ├── launch
│   │   ├── amcl.launch
│   │   ├── gmapping.launch
│   │   ├── multi_car_demo.launch
│   │   ├── navigation.launch
│   │   ├── racebot.launch
│   │   ├── slam_gmapping.launch
│   │   ├── slam_navi（备份）.launch
│   │   ├── slam_navi_car1.launch
│   │   ├── slam_navi_car2.launch
│   │   ├── slam_navi_car3.launch
│   │   ├── teb_base.launch
│   │   ├── teb_demo.launch
│   │   └── tianracer
│   │       ├── tianracer_gmapping.launch
│   │       ├── tianracer.launch
│   │       └── tianracer_teb_demo.launch
│   ├── map
│   │   ├── fine_map.pgm
│   │   ├── fine_map.yaml
│   │   ├── room_mini.pgm
│   │   ├── room_mini.yaml
│   │   ├── test.pmg
│   │   ├── test.yaml
│   │   ├── tianracer_racetrack.pgm
│   │   └── tianracer_racetrack.yaml
│   ├── model
│   │   ├── green_light
│   │   │   ├── materials
│   │   │   │   ├── scripts
│   │   │   │   │   └── my_ground_plane.material
│   │   │   │   └── textures
│   │   │   │       └── greenlight.png
│   │   │   ├── model.config
│   │   │   └── model.sdf
│   │   ├── my_ground_plane
│   │   │   ├── materials
│   │   │   │   ├── scripts
│   │   │   │   │   └── my_ground_plane.material
│   │   │   │   └── textures
│   │   │   │       ├── MyImage
│   │   │   │       │   ├── MyImage.JPG
│   │   │   │       │   └── MyImage.png
│   │   │   │       ├── MyImage.jpg
│   │   │   │       └── MyImage.png.tar.gz
│   │   │   ├── model.config
│   │   │   ├── model.sdf
│   │   │   └── model.sdf.tar.gz
│   │   └── red_light
│   │       ├── materials
│   │       │   ├── scripts
│   │       │   │   └── my_ground_plane.material
│   │       │   └── textures
│   │       │       └── light.png
│   │       ├── model.config
│   │       └── model.sdf
│   ├── package.xml
│   ├── rviz
│   │   ├── gmapping.rviz
│   │   ├── nav（复件）.rviz
│   │   └── nav.rviz
│   ├── scripts
│   │   ├── keyboard_teleop.py
│   │   └── odom_pub.py
│   └── worlds
│       ├── race_with_cone.world
│       ├── room_mini.world
│       ├── test.world
│       └── tiny.world
└── README.md

49 directories, 133 files

总共有5个包：
car_monitor（当前开发中）：通过大功率通信电台，采用UDP通信的格式与小车通信（这部分需要您完善通信源码）
patrol_pkg：发布航点巡逻的功能包
racebot_control：小车速度位置控制功能包
racebot_description：小车模型功能包（.xacro）
racebot_gazebo：小车gazebo仿真功能包

目前卡壳地方：car_monitor功能包的开发是用于解决项目中地面站电台驱动的问题，项目现状：
现在手里有：
- 一台地面站电脑（win10操作系统，地面站上位机软件配合电脑连接的电台与无人车上的电台通讯，其UDP通讯用的是QT格式，但地面站上位机软件只有.dll和.exe文件，这部分）
- 三辆无人小车(ubuntu18.04+自主导航，路径规划，避障决策，速度规划都是在车端完成的，小车与地面站通讯主要通过发送UDP报文，与地面站电脑通讯），注意：我手里有无人车的ros源码，也就是说我很可能可以通过这个获取到通讯格式,但小车本身是不能连接wifi的，也就是说大部分第三方库不一定能用
- 我的电脑，ubuntu20.04，上面运行ros melodic 18.04的docker镜像来跑我们项目最终所需的软件，能够自行规划航点+执行控制的半实物仿真软件)
- 任务要求：用我的电脑跑上述软件，来集成多台小车完成半实物仿真系统，也就是说，我必须打通软件到小车双向通行这一环，我需要在开发出每辆小车上层决策模块的基础上，动态的给小车发送目标点，小车利用自身的teb planner自行规划前往目标点
然后目前项目难点在于：地面站软件源码我无从得知（qt自身的问题，找外包公司做的，没有.pro文件，只有二进制文件和.exe文件），然后我目前需要仅参考小车的UDP通讯报文发送源码，在ros中写一个UDP报文解析的功能包，然后我的电脑去驱动电台，和小车电台建立通信，从而辅助后续的软件开发
于是，我通过部分移植autofleet的方式，开发car_monitor功能包，旨在：反转autofleet中radiocomm.cpp的通信收发逻辑（这部分已经实现了），但catkin_make编译还是会报错，好像是跟头文件的qt格式有关，现在需要您同时参考我们的项目源码和小车端src源码，完善car_monitor的功能包的核心通信部分，能够通过编译，且与docker环境适配，而且保留ros话题接口，便于后续rviz界面的二次开发（二次开发工作交给我就行）

