cmake_minimum_required(VERSION 2.8.3)
project(im_pickit_msgs)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  message_generation
  geometry_msgs
  std_msgs
  std_srvs
)

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
add_message_files(
  FILES

  Object.msg
  ObjectArray.msg
  ObjectModel.msg
  Reliability.msg
  ReliabilityValue.msg
  StatusError.msg
  StatusInvalid.msg
  StatusUnpickable.msg
  SubStatus.msg

  FolderContent.msg
  File.msg
  SubfolderContent.msg

  BeltMotion.msg
  BoundingBox.msg
  ColorRangeRGB.msg
  ColorRangeHSV.msg
  PickitState.msg
  PickitStatus.msg
  RoiStatus.msg
  CalibrationStatus.msg
  SnapshotStatus.msg
  MonitoringEvent.msg
  CameraConfig.msg
  CameraList.msg
  CameraState.msg
  PoseInRobotConvention.msg
  TransformsInRobotConventions.msg
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  StrArg.srv
  LoadConfig.srv
  LoadSnapshot.srv
  SaveSnapshot.srv
  SaveConfiguration.srv
  CheckForObjects.srv
  CopyCalibration.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   geometry_msgs std_msgs std_srvs
 )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
   INCLUDE_DIRS include
#  LIBRARIES im_pickit_msgs
   CATKIN_DEPENDS message_runtime geometry_msgs std_msgs std_srvs
#  DEPENDS system_lib
)

install(DIRECTORY include/${PROJECT_NAME}/
        DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})
