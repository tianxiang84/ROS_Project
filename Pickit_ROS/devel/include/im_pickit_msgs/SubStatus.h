// Generated by gencpp from file im_pickit_msgs/SubStatus.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_SUBSTATUS_H
#define IM_PICKIT_MSGS_MESSAGE_SUBSTATUS_H


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
struct SubStatus_
{
  typedef SubStatus_<ContainerAllocator> Type;

  SubStatus_()
    : substatus(0)
    , detail()  {
    }
  SubStatus_(const ContainerAllocator& _alloc)
    : substatus(0)
    , detail(_alloc)  {
  (void)_alloc;
    }



   typedef uint16_t _substatus_type;
  _substatus_type substatus;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _detail_type;
  _detail_type detail;




  typedef boost::shared_ptr< ::im_pickit_msgs::SubStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::SubStatus_<ContainerAllocator> const> ConstPtr;

}; // struct SubStatus_

typedef ::im_pickit_msgs::SubStatus_<std::allocator<void> > SubStatus;

typedef boost::shared_ptr< ::im_pickit_msgs::SubStatus > SubStatusPtr;
typedef boost::shared_ptr< ::im_pickit_msgs::SubStatus const> SubStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::SubStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::SubStatus_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::im_pickit_msgs::SubStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::SubStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::SubStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::SubStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::SubStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::SubStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::SubStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "637c475b1be22ba7a5f49036bb64ff8b";
  }

  static const char* value(const ::im_pickit_msgs::SubStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x637c475b1be22ba7ULL;
  static const uint64_t static_value2 = 0xa5f49036bb64ff8bULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::SubStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/SubStatus";
  }

  static const char* value(const ::im_pickit_msgs::SubStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::SubStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Rejected object substatus:\n\
#  - StatusUnpickable (orange)\n\
#  - StatusInvalid (red)\n\
#  - StatusDiscarded (no marker)\n\
\n\
uint16 substatus\n\
string detail\n\
";
  }

  static const char* value(const ::im_pickit_msgs::SubStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::SubStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.substatus);
      stream.next(m.detail);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SubStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::SubStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::im_pickit_msgs::SubStatus_<ContainerAllocator>& v)
  {
    s << indent << "substatus: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.substatus);
    s << indent << "detail: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.detail);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_SUBSTATUS_H
