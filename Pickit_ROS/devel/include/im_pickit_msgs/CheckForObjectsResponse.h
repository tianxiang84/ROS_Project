// Generated by gencpp from file im_pickit_msgs/CheckForObjectsResponse.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_CHECKFOROBJECTSRESPONSE_H
#define IM_PICKIT_MSGS_MESSAGE_CHECKFOROBJECTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <im_pickit_msgs/ObjectArray.h>

namespace im_pickit_msgs
{
template <class ContainerAllocator>
struct CheckForObjectsResponse_
{
  typedef CheckForObjectsResponse_<ContainerAllocator> Type;

  CheckForObjectsResponse_()
    : success(false)
    , objects()  {
    }
  CheckForObjectsResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , objects(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef  ::im_pickit_msgs::ObjectArray_<ContainerAllocator>  _objects_type;
  _objects_type objects;




  typedef boost::shared_ptr< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CheckForObjectsResponse_

typedef ::im_pickit_msgs::CheckForObjectsResponse_<std::allocator<void> > CheckForObjectsResponse;

typedef boost::shared_ptr< ::im_pickit_msgs::CheckForObjectsResponse > CheckForObjectsResponsePtr;
typedef boost::shared_ptr< ::im_pickit_msgs::CheckForObjectsResponse const> CheckForObjectsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace im_pickit_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'im_pickit_msgs': ['/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "991a96571e9f4e20d906edfcd9ce097d";
  }

  static const char* value(const ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x991a96571e9f4e20ULL;
  static const uint64_t static_value2 = 0xd906edfcd9ce097dULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/CheckForObjectsResponse";
  }

  static const char* value(const ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool           success\n\
ObjectArray    objects\n\
\n\
\n\
================================================================================\n\
MSG: im_pickit_msgs/ObjectArray\n\
## Copyright Intermodalics 2014\n\
## This message contains all objects found by the last Pick-it run ##\n\
\n\
# Origin of the msg content\n\
uint8 NEW_OBJECT_DETECTION = 2\n\
uint8 RESET = 0\n\
\n\
# Clustering methods\n\
uint8 NO_CLUSTERING = 10\n\
uint8 DISTANCE_BASED_CLUSTERING = 11\n\
uint8 NORMAL_BASED_CLUSTERING = 12\n\
\n\
std_msgs/Header                 header\n\
uint8                           content\n\
uint32                          encoder_stamp\n\
geometry_msgs/TransformStamped  robot_to_camera_tf\n\
geometry_msgs/TransformStamped  camera_to_reference_tf\n\
\n\
float64                         cloud_capturing_duration\n\
\n\
uint8                           clustering_method\n\
uint16                          n_rejected_clusters\n\
float64                         clustering_duration\n\
\n\
float64                         calculation_time # Total object detection time\n\
\n\
uint16                          n_valid_objects\n\
uint16                          n_rejected_objects\n\
\n\
im_pickit_msgs/Object[]         objects\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/TransformStamped\n\
# This expresses a transform from coordinate frame header.frame_id\n\
# to the coordinate frame child_frame_id\n\
#\n\
# This message is mostly used by the \n\
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. \n\
# See its documentation for more information.\n\
\n\
Header header\n\
string child_frame_id # the frame id of the child frame\n\
Transform transform\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: im_pickit_msgs/Object\n\
## Copyright Intermodalics 2016\n\
## This message contains all descriptive data for one object found by Pick-it ##\n\
\n\
# Object index in list associated to a single detection run.\n\
uint16                                  index\n\
\n\
# Object frame expressed with respect to a frame.\n\
geometry_msgs/TransformStamped          object_tf\n\
\n\
# Object pick frame expressed with respect to a frame.\n\
geometry_msgs/TransformStamped          object_pick_tf\n\
\n\
# Object model used for registration, reliability score calculation and more.\n\
ObjectModel                             model\n\
\n\
# Number of scene points verifying the object model.\n\
uint16                                  n_points\n\
\n\
# Object dimensions. The contents of the x, y and z elements depend on the\n\
# object type:\n\
#\n\
#  |   Type      |    X     |    Y     |    Z     |\n\
#  |-------------|----------|----------|----------|\n\
#  | CYLINDER    | length   | diameter | diameter |\n\
#  | SPHERE      | diameter | diameter | diameter |\n\
#  | RECTANGLE   | length   | width    |    0     |\n\
#  | SQUARE      | length   | length   |    0     |\n\
#  | ELLIPSE     | length   | width    |    0     |\n\
#  | CIRCLE      | diameter | diameter |    0     |\n\
#  | POINT_CLOUD | bbox X   | bbox Y   | bbox Z   |\n\
#  | BLOB        | bbox X   | bbox Y   | bbox Z   |\n\
#\n\
# where 'bbox X' means the span of the object's bounding box along the X-axis.\n\
geometry_msgs/Vector3                   dimensions\n\
\n\
# Contains scoring metrics used to quantify the goodness of a detection.\n\
Reliability                             reliability\n\
\n\
# NOTE: There is currently an inconsistency between terms used in the\n\
#       back-end vs. the front-end. The following table summarizes them to\n\
#       prevent confusion:\n\
#\n\
#       BACK-END flag  maps to ->   FRONT-END detection grid column\n\
#\n\
#       is_pickable    maps to ->   Pickable\n\
#       is_detectable  maps to ->   Valid\n\
#       is_valid       maps to ->   <None>\n\
#\n\
#       Notice in particular how the is_valid back-end flag and the Valid\n\
#       front-end detection grid column have different meanings.\n\
\n\
# Flag that evaluates to true when an object is both pickable and detectable.\n\
bool                                    is_valid\n\
\n\
# Flag that evaluates to true when an object satisfies frame alignment and\n\
# collision constraints.\n\
bool                                    is_pickable\n\
\n\
# Flag that evaluates to true when an object satisfies fitting, reliability and\n\
# size constraints.\n\
bool                                    is_detectable\n\
\n\
# List of strings describing main detection status for invalid detections\n\
# (e.g. ERROR, INVALID, UNPICKABLE).\n\
# See CATEGORY strings in StatusXxx.msg files for available categories.\n\
# The list is empty in case of a valid detection.\n\
string[]                                categories\n\
\n\
# List of substatus identifiers providing detail information for each of the\n\
# above categories. There is one substatus per category.\n\
# The list is empty in case of a valid detection.\n\
SubStatus[]                             substatuses\n\
\n\
================================================================================\n\
MSG: im_pickit_msgs/ObjectModel\n\
# Copyright (c) 2017, Pick-it NV.\n\
# All rights reserved.\n\
\n\
# Definition of different object models used for registration, reliability score calculation and more.\n\
\n\
# Unspecified\n\
uint8 NONE          = 0\n\
\n\
# 2D models:\n\
uint8 SQUARE        = 21\n\
uint8 RECTANGLE     = 22\n\
uint8 CIRCLE        = 23\n\
uint8 ELLIPSE       = 24\n\
\n\
# 3D models:\n\
uint8 CYLINDER      = 32\n\
uint8 SPHERE        = 33\n\
uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).\n\
\n\
# Other models:\n\
uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.\n\
\n\
# Models of internal use only:\n\
uint8 CLUSTER       = 250\n\
\n\
uint8 type  # Model type, takes one of the above defined models types as value.\n\
\n\
================================================================================\n\
MSG: im_pickit_msgs/Reliability\n\
## Contains all parameters describing reliability of detected object\n\
## Values expressed as confidence levels ranging from 0.0 to 1.0\n\
\n\
## Ratio of inlier points close to the border of the \"Intermodalics hole\" and\n\
## all points of the \"Intermodalics hole\".\n\
ReliabilityValue scene_coverage_2d\n\
\n\
## Ratio of inlier points to all points in the cluster.\n\
ReliabilityValue scene_coverage_3d\n\
\n\
### TODO(@wannesvanloock): Add description pls.\n\
ReliabilityValue model_contour_coverage_2d\n\
### TODO(@wannesvanloock): Add description pls.\n\
ReliabilityValue model_surface_coverage_2d\n\
\n\
## 3D reliability of the matched model\n\
ReliabilityValue model_coverage_3d\n\
\n\
================================================================================\n\
MSG: im_pickit_msgs/ReliabilityValue\n\
float64 value\n\
float64 required_value\n\
\n\
# mostly we work with lower limits so usually this is false\n\
bool has_upper_limit     \n\
================================================================================\n\
MSG: im_pickit_msgs/SubStatus\n\
# Rejected object substatus:\n\
#  - StatusUnpickable (orange)\n\
#  - StatusInvalid (red)\n\
#  - StatusDiscarded (no marker)\n\
\n\
uint16 substatus\n\
string detail\n\
";
  }

  static const char* value(const ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.objects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CheckForObjectsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::im_pickit_msgs::CheckForObjectsResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "objects: ";
    s << std::endl;
    Printer< ::im_pickit_msgs::ObjectArray_<ContainerAllocator> >::stream(s, indent + "  ", v.objects);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_CHECKFOROBJECTSRESPONSE_H
