// Generated by gencpp from file im_pickit_msgs/Reliability.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_RELIABILITY_H
#define IM_PICKIT_MSGS_MESSAGE_RELIABILITY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <im_pickit_msgs/ReliabilityValue.h>
#include <im_pickit_msgs/ReliabilityValue.h>
#include <im_pickit_msgs/ReliabilityValue.h>
#include <im_pickit_msgs/ReliabilityValue.h>
#include <im_pickit_msgs/ReliabilityValue.h>

namespace im_pickit_msgs
{
template <class ContainerAllocator>
struct Reliability_
{
  typedef Reliability_<ContainerAllocator> Type;

  Reliability_()
    : scene_coverage_2d()
    , scene_coverage_3d()
    , model_contour_coverage_2d()
    , model_surface_coverage_2d()
    , model_coverage_3d()  {
    }
  Reliability_(const ContainerAllocator& _alloc)
    : scene_coverage_2d(_alloc)
    , scene_coverage_3d(_alloc)
    , model_contour_coverage_2d(_alloc)
    , model_surface_coverage_2d(_alloc)
    , model_coverage_3d(_alloc)  {
  (void)_alloc;
    }



   typedef  ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator>  _scene_coverage_2d_type;
  _scene_coverage_2d_type scene_coverage_2d;

   typedef  ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator>  _scene_coverage_3d_type;
  _scene_coverage_3d_type scene_coverage_3d;

   typedef  ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator>  _model_contour_coverage_2d_type;
  _model_contour_coverage_2d_type model_contour_coverage_2d;

   typedef  ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator>  _model_surface_coverage_2d_type;
  _model_surface_coverage_2d_type model_surface_coverage_2d;

   typedef  ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator>  _model_coverage_3d_type;
  _model_coverage_3d_type model_coverage_3d;




  typedef boost::shared_ptr< ::im_pickit_msgs::Reliability_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::Reliability_<ContainerAllocator> const> ConstPtr;

}; // struct Reliability_

typedef ::im_pickit_msgs::Reliability_<std::allocator<void> > Reliability;

typedef boost::shared_ptr< ::im_pickit_msgs::Reliability > ReliabilityPtr;
typedef boost::shared_ptr< ::im_pickit_msgs::Reliability const> ReliabilityConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::Reliability_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::Reliability_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace im_pickit_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'im_pickit_msgs': ['/home/sdrwcs/ROS_Projects/Pickit_ROS/src/im_pickit_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::Reliability_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::Reliability_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::Reliability_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::Reliability_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::Reliability_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::Reliability_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::Reliability_<ContainerAllocator> >
{
  static const char* value()
  {
    return "685a54d871aab00bbe45a67c03dafaea";
  }

  static const char* value(const ::im_pickit_msgs::Reliability_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x685a54d871aab00bULL;
  static const uint64_t static_value2 = 0xbe45a67c03dafaeaULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::Reliability_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/Reliability";
  }

  static const char* value(const ::im_pickit_msgs::Reliability_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::Reliability_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## Contains all parameters describing reliability of detected object\n\
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
";
  }

  static const char* value(const ::im_pickit_msgs::Reliability_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::Reliability_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.scene_coverage_2d);
      stream.next(m.scene_coverage_3d);
      stream.next(m.model_contour_coverage_2d);
      stream.next(m.model_surface_coverage_2d);
      stream.next(m.model_coverage_3d);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Reliability_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::Reliability_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::im_pickit_msgs::Reliability_<ContainerAllocator>& v)
  {
    s << indent << "scene_coverage_2d: ";
    s << std::endl;
    Printer< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >::stream(s, indent + "  ", v.scene_coverage_2d);
    s << indent << "scene_coverage_3d: ";
    s << std::endl;
    Printer< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >::stream(s, indent + "  ", v.scene_coverage_3d);
    s << indent << "model_contour_coverage_2d: ";
    s << std::endl;
    Printer< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >::stream(s, indent + "  ", v.model_contour_coverage_2d);
    s << indent << "model_surface_coverage_2d: ";
    s << std::endl;
    Printer< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >::stream(s, indent + "  ", v.model_surface_coverage_2d);
    s << indent << "model_coverage_3d: ";
    s << std::endl;
    Printer< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >::stream(s, indent + "  ", v.model_coverage_3d);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_RELIABILITY_H
