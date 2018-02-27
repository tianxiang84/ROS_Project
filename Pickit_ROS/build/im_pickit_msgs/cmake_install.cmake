# Install script for directory: /home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sdrwcs/ROS_Projects/Pickit_ROS/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/im_pickit_msgs/msg" TYPE FILE FILES
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/im_pickit_msgs/srv" TYPE FILE FILES
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/im_pickit_msgs/cmake" TYPE FILE FILES "/home/sdrwcs/ROS_Projects/Pickit_ROS/build/im_pickit_msgs/catkin_generated/installspace/im_pickit_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sdrwcs/ROS_Projects/Pickit_ROS/devel/include/im_pickit_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sdrwcs/ROS_Projects/Pickit_ROS/devel/share/roseus/ros/im_pickit_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sdrwcs/ROS_Projects/Pickit_ROS/devel/share/common-lisp/ros/im_pickit_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sdrwcs/ROS_Projects/Pickit_ROS/devel/share/gennodejs/ros/im_pickit_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/sdrwcs/ROS_Projects/Pickit_ROS/devel/lib/python2.7/dist-packages/im_pickit_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/sdrwcs/ROS_Projects/Pickit_ROS/devel/lib/python2.7/dist-packages/im_pickit_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sdrwcs/ROS_Projects/Pickit_ROS/build/im_pickit_msgs/catkin_generated/installspace/im_pickit_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/im_pickit_msgs/cmake" TYPE FILE FILES "/home/sdrwcs/ROS_Projects/Pickit_ROS/build/im_pickit_msgs/catkin_generated/installspace/im_pickit_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/im_pickit_msgs/cmake" TYPE FILE FILES
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/build/im_pickit_msgs/catkin_generated/installspace/im_pickit_msgsConfig.cmake"
    "/home/sdrwcs/ROS_Projects/Pickit_ROS/build/im_pickit_msgs/catkin_generated/installspace/im_pickit_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/im_pickit_msgs" TYPE FILE FILES "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/im_pickit_msgs" TYPE DIRECTORY FILES "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/include/im_pickit_msgs/")
endif()

