cmake_minimum_required(VERSION 3.0.2)
project(car_monitor)

# 添加C++11支持
add_compile_options(-std=c++11)

# 查找必要的依赖包
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  geometry_msgs
  visualization_msgs
  message_generation
)

# 查找Qt5依赖
find_package(Qt5 REQUIRED COMPONENTS Core Network)

# 添加消息文件
add_message_files(
  FILES
  CarRank.msg
  Goal.msg
  Gps.msg
)

# 生成消息依赖
generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

# catkin配置
catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS 
    roscpp 
    std_msgs 
    geometry_msgs 
    visualization_msgs
    message_runtime
)

# 设置包含目录
include_directories(
  ${PROJECT_SOURCE_DIR}/include
  ${PROJECT_SOURCE_DIR}/devel/include
  ${catkin_INCLUDE_DIRS}
  ${Qt5Core_INCLUDE_DIRS}
  ${Qt5Network_INCLUDE_DIRS}
)

# Qt moc处理
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

# 添加可执行文件
add_executable(${PROJECT_NAME}_node 
  src/radiocomm.cpp
)

# 添加消息生成依赖
add_dependencies(${PROJECT_NAME}_node
  ${${PROJECT_NAME}_EXPORTED_TARGETS}
  ${catkin_EXPORTED_TARGETS}
)

# 链接库
target_link_libraries(${PROJECT_NAME}_node
  ${catkin_LIBRARIES}
  Qt5::Core
  Qt5::Network
)

