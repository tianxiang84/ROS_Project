// Generated by gencpp from file im_pickit_msgs/SnapshotStatus.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_SNAPSHOTSTATUS_H
#define IM_PICKIT_MSGS_MESSAGE_SNAPSHOTSTATUS_H


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
struct SnapshotStatus_
{
  typedef SnapshotStatus_<ContainerAllocator> Type;

  SnapshotStatus_()
    : snapshot_mode(false)
    , snapshot_name()
    , system_id()
    , pickit_version()
    , robot_type()  {
    }
  SnapshotStatus_(const ContainerAllocator& _alloc)
    : snapshot_mode(false)
    , snapshot_name(_alloc)
    , system_id(_alloc)
    , pickit_version(_alloc)
    , robot_type(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _snapshot_mode_type;
  _snapshot_mode_type snapshot_mode;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _snapshot_name_type;
  _snapshot_name_type snapshot_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _system_id_type;
  _system_id_type system_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _pickit_version_type;
  _pickit_version_type pickit_version;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_type_type;
  _robot_type_type robot_type;




  typedef boost::shared_ptr< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> const> ConstPtr;

}; // struct SnapshotStatus_

typedef ::im_pickit_msgs::SnapshotStatus_<std::allocator<void> > SnapshotStatus;

typedef boost::shared_ptr< ::im_pickit_msgs::SnapshotStatus > SnapshotStatusPtr;
typedef boost::shared_ptr< ::im_pickit_msgs::SnapshotStatus const> SnapshotStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e1c1150594163791dcb2936812dacac0";
  }

  static const char* value(const ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe1c1150594163791ULL;
  static const uint64_t static_value2 = 0xdcb2936812dacac0ULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/SnapshotStatus";
  }

  static const char* value(const ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool snapshot_mode            # boolean indicating whether we are in snapshot mode or not\n\
string snapshot_name          # name of the loaded snapshot\n\
string system_id                  # Hostname of the machine that generated the snapshot\n\
string pickit_version             # Git hash in case of compilation from source OR pickit version\n\
string robot_type                 # Robot type from the socket interface.\n\
";
  }

  static const char* value(const ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.snapshot_mode);
      stream.next(m.snapshot_name);
      stream.next(m.system_id);
      stream.next(m.pickit_version);
      stream.next(m.robot_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SnapshotStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::im_pickit_msgs::SnapshotStatus_<ContainerAllocator>& v)
  {
    s << indent << "snapshot_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.snapshot_mode);
    s << indent << "snapshot_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.snapshot_name);
    s << indent << "system_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.system_id);
    s << indent << "pickit_version: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.pickit_version);
    s << indent << "robot_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_SNAPSHOTSTATUS_H
