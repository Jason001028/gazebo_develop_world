# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "car_monitor: 3 messages, 0 services")

set(MSG_I_FLAGS "-Icar_monitor:/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(car_monitor_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg" NAME_WE)
add_custom_target(_car_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_monitor" "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg" ""
)

get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg" NAME_WE)
add_custom_target(_car_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_monitor" "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg" NAME_WE)
add_custom_target(_car_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_monitor" "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_monitor
)
_generate_msg_cpp(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_monitor
)
_generate_msg_cpp(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_monitor
)

### Generating Services

### Generating Module File
_generate_module_cpp(car_monitor
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_monitor
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(car_monitor_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(car_monitor_generate_messages car_monitor_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_cpp _car_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_cpp _car_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_cpp _car_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_monitor_gencpp)
add_dependencies(car_monitor_gencpp car_monitor_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_monitor_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_monitor
)
_generate_msg_eus(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_monitor
)
_generate_msg_eus(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_monitor
)

### Generating Services

### Generating Module File
_generate_module_eus(car_monitor
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_monitor
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(car_monitor_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(car_monitor_generate_messages car_monitor_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_eus _car_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_eus _car_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_eus _car_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_monitor_geneus)
add_dependencies(car_monitor_geneus car_monitor_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_monitor_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_monitor
)
_generate_msg_lisp(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_monitor
)
_generate_msg_lisp(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_monitor
)

### Generating Services

### Generating Module File
_generate_module_lisp(car_monitor
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_monitor
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(car_monitor_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(car_monitor_generate_messages car_monitor_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_lisp _car_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_lisp _car_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_lisp _car_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_monitor_genlisp)
add_dependencies(car_monitor_genlisp car_monitor_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_monitor_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_monitor
)
_generate_msg_nodejs(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_monitor
)
_generate_msg_nodejs(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_monitor
)

### Generating Services

### Generating Module File
_generate_module_nodejs(car_monitor
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_monitor
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(car_monitor_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(car_monitor_generate_messages car_monitor_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_nodejs _car_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_nodejs _car_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_nodejs _car_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_monitor_gennodejs)
add_dependencies(car_monitor_gennodejs car_monitor_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_monitor_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_monitor
)
_generate_msg_py(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_monitor
)
_generate_msg_py(car_monitor
  "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_monitor
)

### Generating Services

### Generating Module File
_generate_module_py(car_monitor
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_monitor
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(car_monitor_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(car_monitor_generate_messages car_monitor_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_py _car_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_py _car_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg" NAME_WE)
add_dependencies(car_monitor_generate_messages_py _car_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_monitor_genpy)
add_dependencies(car_monitor_genpy car_monitor_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_monitor_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_monitor
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(car_monitor_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(car_monitor_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_monitor
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(car_monitor_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(car_monitor_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_monitor
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(car_monitor_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(car_monitor_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_monitor
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(car_monitor_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(car_monitor_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_monitor)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_monitor\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_monitor
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(car_monitor_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(car_monitor_generate_messages_py geometry_msgs_generate_messages_py)
endif()
