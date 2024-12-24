# Install script for directory: /home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/car_monitor/msg" TYPE FILE FILES
    "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/CarRank.msg"
    "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Goal.msg"
    "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/msg/Gps.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/car_monitor/cmake" TYPE FILE FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/build/car_monitor/catkin_generated/installspace/car_monitor-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/devel/include/car_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/devel/share/roseus/ros/car_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/devel/share/common-lisp/ros/car_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/devel/share/gennodejs/ros/car_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/devel/lib/python3/dist-packages/car_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/devel/lib/python3/dist-packages/car_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/build/car_monitor/catkin_generated/installspace/car_monitor.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/car_monitor/cmake" TYPE FILE FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/build/car_monitor/catkin_generated/installspace/car_monitor-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/car_monitor/cmake" TYPE FILE FILES
    "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/build/car_monitor/catkin_generated/installspace/car_monitorConfig.cmake"
    "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/build/car_monitor/catkin_generated/installspace/car_monitorConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/car_monitor" TYPE FILE FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/car_monitor/package.xml")
endif()

