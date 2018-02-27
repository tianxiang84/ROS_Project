# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "im_pickit_msgs: 27 messages, 7 services")

set(MSG_I_FLAGS "-Iim_pickit_msgs:/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(im_pickit_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg" "im_pickit_msgs/Reliability:geometry_msgs/TransformStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:im_pickit_msgs/ReliabilityValue:geometry_msgs/Transform:im_pickit_msgs/SubStatus:im_pickit_msgs/ObjectModel"
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg" "geometry_msgs/Quaternion:geometry_msgs/Transform:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg" "im_pickit_msgs/File:im_pickit_msgs/SubfolderContent"
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg" "im_pickit_msgs/PoseInRobotConvention"
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg" "im_pickit_msgs/File"
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg" "im_pickit_msgs/CameraConfig:im_pickit_msgs/CameraState"
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg" "im_pickit_msgs/Reliability:geometry_msgs/TransformStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:im_pickit_msgs/ReliabilityValue:geometry_msgs/Transform:im_pickit_msgs/SubStatus:im_pickit_msgs/Object:im_pickit_msgs/ObjectModel"
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv" "im_pickit_msgs/Reliability:geometry_msgs/TransformStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:im_pickit_msgs/ReliabilityValue:geometry_msgs/Transform:im_pickit_msgs/ObjectArray:im_pickit_msgs/SubStatus:im_pickit_msgs/Object:im_pickit_msgs/ObjectModel"
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg" "im_pickit_msgs/ReliabilityValue"
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg" ""
)

get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg" NAME_WE)
add_custom_target(_im_pickit_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "im_pickit_msgs" "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)

### Generating Services
_generate_srv_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_cpp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
)

### Generating Module File
_generate_module_cpp(im_pickit_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(im_pickit_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(im_pickit_msgs_generate_messages im_pickit_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_cpp _im_pickit_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(im_pickit_msgs_gencpp)
add_dependencies(im_pickit_msgs_gencpp im_pickit_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS im_pickit_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)

### Generating Services
_generate_srv_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_eus(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
)

### Generating Module File
_generate_module_eus(im_pickit_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(im_pickit_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(im_pickit_msgs_generate_messages im_pickit_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_eus _im_pickit_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(im_pickit_msgs_geneus)
add_dependencies(im_pickit_msgs_geneus im_pickit_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS im_pickit_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)

### Generating Services
_generate_srv_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_lisp(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
)

### Generating Module File
_generate_module_lisp(im_pickit_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(im_pickit_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(im_pickit_msgs_generate_messages im_pickit_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_lisp _im_pickit_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(im_pickit_msgs_genlisp)
add_dependencies(im_pickit_msgs_genlisp im_pickit_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS im_pickit_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)

### Generating Services
_generate_srv_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_nodejs(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
)

### Generating Module File
_generate_module_nodejs(im_pickit_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(im_pickit_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(im_pickit_msgs_generate_messages im_pickit_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_nodejs _im_pickit_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(im_pickit_msgs_gennodejs)
add_dependencies(im_pickit_msgs_gennodejs im_pickit_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS im_pickit_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_msg_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)

### Generating Services
_generate_srv_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv"
  "${MSG_I_FLAGS}"
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg;/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)
_generate_srv_py(im_pickit_msgs
  "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
)

### Generating Module File
_generate_module_py(im_pickit_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(im_pickit_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(im_pickit_msgs_generate_messages im_pickit_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CopyCalibration.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusInvalid.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ReliabilityValue.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/RoiStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitState.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusError.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/StatusUnpickable.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraConfig.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/MonitoringEvent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadConfig.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Object.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeHSV.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/BeltMotion.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveConfiguration.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/LoadSnapshot.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/FolderContent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ColorRangeRGB.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectModel.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SnapshotStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/File.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/StrArg.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/TransformsInRobotConventions.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/SubfolderContent.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraList.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/ObjectArray.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/CheckForObjects.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/Reliability.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PickitStatus.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/srv/SaveSnapshot.srv" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/CameraState.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg/PoseInRobotConvention.msg" NAME_WE)
add_dependencies(im_pickit_msgs_generate_messages_py _im_pickit_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(im_pickit_msgs_genpy)
add_dependencies(im_pickit_msgs_genpy im_pickit_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS im_pickit_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/im_pickit_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(im_pickit_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(im_pickit_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(im_pickit_msgs_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/im_pickit_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(im_pickit_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(im_pickit_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(im_pickit_msgs_generate_messages_eus std_srvs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/im_pickit_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(im_pickit_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(im_pickit_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(im_pickit_msgs_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/im_pickit_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(im_pickit_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(im_pickit_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(im_pickit_msgs_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/im_pickit_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(im_pickit_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(im_pickit_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(im_pickit_msgs_generate_messages_py std_srvs_generate_messages_py)
endif()
