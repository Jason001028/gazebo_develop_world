# Install script for directory: /home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/patrol_pkg

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/build/patrol_pkg/catkin_generated/installspace/patrol_pkg.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/patrol_pkg/cmake" TYPE FILE FILES
    "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/build/patrol_pkg/catkin_generated/installspace/patrol_pkgConfig.cmake"
    "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/build/patrol_pkg/catkin_generated/installspace/patrol_pkgConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/patrol_pkg" TYPE FILE FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/patrol_pkg/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/patrol_pkg" TYPE PROGRAM FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/build/patrol_pkg/catkin_generated/installspace/patrol_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/patrol_pkg" TYPE DIRECTORY FILES
    "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/patrol_pkg/launch"
    "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/patrol_pkg/config"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/patrol_pkg" TYPE PROGRAM FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/patrol_pkg/scripts/demo_navigation1.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/patrol_pkg" TYPE PROGRAM FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/patrol_pkg/scripts/demo_navigation2.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/patrol_pkg" TYPE PROGRAM FILES "/home/wang/桌面/验收方案（位置规划脚本+多车电台开发）/ackermann_gazebo_sim/src/patrol_pkg/scripts/demo_navigation3.sh")
endif()

