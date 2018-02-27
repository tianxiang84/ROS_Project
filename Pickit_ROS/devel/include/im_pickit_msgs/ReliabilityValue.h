// Generated by gencpp from file im_pickit_msgs/ReliabilityValue.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_RELIABILITYVALUE_H
#define IM_PICKIT_MSGS_MESSAGE_RELIABILITYVALUE_H


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
struct ReliabilityValue_
{
  typedef ReliabilityValue_<ContainerAllocator> Type;

  ReliabilityValue_()
    : value(0.0)
    , required_value(0.0)
    , has_upper_limit(false)  {
    }
  ReliabilityValue_(const ContainerAllocator& _alloc)
    : value(0.0)
    , required_value(0.0)
    , has_upper_limit(false)  {
  (void)_alloc;
    }



   typedef double _value_type;
  _value_type value;

   typedef double _required_value_type;
  _required_value_type required_value;

   typedef uint8_t _has_upper_limit_type;
  _has_upper_limit_type has_upper_limit;




  typedef boost::shared_ptr< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> const> ConstPtr;

}; // struct ReliabilityValue_

typedef ::im_pickit_msgs::ReliabilityValue_<std::allocator<void> > ReliabilityValue;

typedef boost::shared_ptr< ::im_pickit_msgs::ReliabilityValue > ReliabilityValuePtr;
typedef boost::shared_ptr< ::im_pickit_msgs::ReliabilityValue const> ReliabilityValueConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9c363c22be8a9bef0476a084792fea44";
  }

  static const char* value(const ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9c363c22be8a9befULL;
  static const uint64_t static_value2 = 0x0476a084792fea44ULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/ReliabilityValue";
  }

  static const char* value(const ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 value\n\
float64 required_value\n\
\n\
# mostly we work with lower limits so usually this is false\n\
bool has_upper_limit     \n\
";
  }

  static const char* value(const ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.required_value);
      stream.next(m.has_upper_limit);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReliabilityValue_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::im_pickit_msgs::ReliabilityValue_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<double>::stream(s, indent + "  ", v.value);
    s << indent << "required_value: ";
    Printer<double>::stream(s, indent + "  ", v.required_value);
    s << indent << "has_upper_limit: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_upper_limit);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_RELIABILITYVALUE_H