# Install script for directory: /home/vsung/catkin_ws/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/vsung/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vsung/catkin_ws/install/_setup_util.py")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/vsung/catkin_ws/install" TYPE PROGRAM FILES "/home/vsung/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vsung/catkin_ws/install/env.sh")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/vsung/catkin_ws/install" TYPE PROGRAM FILES "/home/vsung/catkin_ws/build/catkin_generated/installspace/env.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vsung/catkin_ws/install/setup.bash")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/vsung/catkin_ws/install" TYPE FILE FILES "/home/vsung/catkin_ws/build/catkin_generated/installspace/setup.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vsung/catkin_ws/install/setup.sh")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/vsung/catkin_ws/install" TYPE FILE FILES "/home/vsung/catkin_ws/build/catkin_generated/installspace/setup.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vsung/catkin_ws/install/setup.zsh")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/vsung/catkin_ws/install" TYPE FILE FILES "/home/vsung/catkin_ws/build/catkin_generated/installspace/setup.zsh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vsung/catkin_ws/install/.rosinstall")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/vsung/catkin_ws/install" TYPE FILE FILES "/home/vsung/catkin_ws/build/catkin_generated/installspace/.rosinstall")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/vsung/catkin_ws/build/gtest/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/box_test/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hakuto/hakuto/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hector_gazebo/hector_gazebo/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hector_gazebo/hector_gazebo_worlds/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hector_localization/hector_localization/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hector_gazebo/hector_sensors_gazebo/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/husky_simulator/husky_simulator/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/jackal/jackal_tutorials/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/mybot_ws/src/mybot_control/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/mybot_ws/src/mybot_description/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/mybot_ws/src/mybot_gazebo/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/mybot_ws/src/mybot_navigation/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/gazebo_ros_demos/rrbot_control/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/gazebo_ros_demos/rrbot_description/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/gazebo_ros_demos/rrbot_gazebo/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/husky/husky_msgs/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/jackal/jackal_msgs/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hakuto/tetris_description/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/DataspeedInc-velodyne_simulator-01bfb68ef647/velodyne_description/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/DataspeedInc-velodyne_simulator-01bfb68ef647/velodyne_simulator/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/lab2/catkin_ws/src/adafruit_drivers/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/lab2/catkin_ws/src/me212_robot/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/husky/husky_control/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/husky/husky_description/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/husky_simulator/husky_gazebo/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/husky/husky_navigation/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/husky/husky_ur5_moveit_config/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/jackal/jackal_control/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/jackal/jackal_description/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/jackal/jackal_navigation/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/ua_ros_p3dx/p3dx_control/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hakuto/tetris_launch/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/gazebo_ros_demos/custom_plugin_tutorial/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hector_gazebo/hector_gazebo_plugins/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hector_localization/hector_pose_estimation_core/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hector_localization/hector_pose_estimation/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/using_markers/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hector_localization/message_to_tf/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/demo_ros/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/odometry_publisher_tutorial/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/rviz_visual/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hector_gazebo/hector_gazebo_thermal_camera/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/ua_ros_p3dx/p3dx_description/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/ua_ros_p3dx/p3dx_gazebo/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/hakuto/tetris_gazebo/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/DataspeedInc-velodyne_simulator-01bfb68ef647/velodyne_gazebo_plugins/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/wheelbot/cmake_install.cmake")
  INCLUDE("/home/vsung/catkin_ws/build/huskyterrain/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/vsung/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/vsung/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)