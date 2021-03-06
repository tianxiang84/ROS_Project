// Generated by gencpp from file im_pickit_msgs/RoiStatus.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_ROISTATUS_H
#define IM_PICKIT_MSGS_MESSAGE_ROISTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace im_pickit_msgs
{
template <class ContainerAllocator>
struct RoiStatus_
{
  typedef RoiStatus_<ContainerAllocator> Type;

  RoiStatus_()
    : roi_markers_visible(false)
    , roi_defined(false)
    , bg_points_defined(false)
    , bg_plane_defined(false)
    , bg_sphere_defined(false)  {
    }
  RoiStatus_(const ContainerAllocator& _alloc)
    : roi_markers_visible(false)
    , roi_defined(false)
    , bg_points_defined(false)
    , bg_plane_defined(false)
    , bg_sphere_defined(false)  {
  (void)_alloc;
    }



   typedef uint8_t _roi_markers_visible_type;
  _roi_markers_visible_type roi_markers_visible;

   typedef uint8_t _roi_defined_type;
  _roi_defined_type roi_defined;

   typedef uint8_t _bg_points_defined_type;
  _bg_points_defined_type bg_points_defined;

   typedef uint8_t _bg_plane_defined_type;
  _bg_plane_defined_type bg_plane_defined;

   typedef uint8_t _bg_sphere_defined_type;
  _bg_sphere_defined_type bg_sphere_defined;




  typedef boost::shared_ptr< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> const> ConstPtr;

}; // struct RoiStatus_

typedef ::im_pickit_msgs::RoiStatus_<std::allocator<void> > RoiStatus;

typedef boost::shared_ptr< ::im_pickit_msgs::RoiStatus > RoiStatusPtr;
typedef boost::shared_ptr< ::im_pickit_msgs::RoiStatus const> RoiStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::RoiStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "15f99c44da3357bca53b85d90df3508d";
  }

  static const char* value(const ::im_pickit_msgs::RoiStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x15f99c44da3357bcULL;
  static const uint64_t static_value2 = 0xa53b85d90df3508dULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/RoiStatus";
  }

  static const char* value(const ::im_pickit_msgs::RoiStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## Copyright Pick-it 2017\n\
## This message contains ROI status information  ##\n\
\n\
bool roi_markers_visible\n\
bool roi_defined # TODO remove this flag and replace with service request\n\
\n\
bool bg_points_defined\n\
bool bg_plane_defined\n\
bool bg_sphere_defined\n\
";
  }

  static const char* value(const ::im_pickit_msgs::RoiStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roi_markers_visible);
      stream.next(m.roi_defined);
      stream.next(m.bg_points_defined);
      stream.next(m.bg_plane_defined);
      stream.next(m.bg_sphere_defined);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoiStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::RoiStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::im_pickit_msgs::RoiStatus_<ContainerAllocator>& v)
  {
    s << indent << "roi_markers_visible: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.roi_markers_visible);
    s << indent << "roi_defined: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.roi_defined);
    s << indent << "bg_points_defined: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.bg_points_defined);
    s << indent << "bg_plane_defined: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.bg_plane_defined);
    s << indent << "bg_sphere_defined: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.bg_sphere_defined);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_ROISTATUS_H
