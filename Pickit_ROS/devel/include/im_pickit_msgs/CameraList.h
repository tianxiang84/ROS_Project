// Generated by gencpp from file im_pickit_msgs/CameraList.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_CAMERALIST_H
#define IM_PICKIT_MSGS_MESSAGE_CAMERALIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <im_pickit_msgs/CameraConfig.h>
#include <im_pickit_msgs/CameraState.h>

namespace im_pickit_msgs
{
template <class ContainerAllocator>
struct CameraList_
{
  typedef CameraList_<ContainerAllocator> Type;

  CameraList_()
    : cameras()
    , camera_states()  {
    }
  CameraList_(const ContainerAllocator& _alloc)
    : cameras(_alloc)
    , camera_states(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::im_pickit_msgs::CameraConfig_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::im_pickit_msgs::CameraConfig_<ContainerAllocator> >::other >  _cameras_type;
  _cameras_type cameras;

   typedef std::vector< ::im_pickit_msgs::CameraState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::im_pickit_msgs::CameraState_<ContainerAllocator> >::other >  _camera_states_type;
  _camera_states_type camera_states;




  typedef boost::shared_ptr< ::im_pickit_msgs::CameraList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::CameraList_<ContainerAllocator> const> ConstPtr;

}; // struct CameraList_

typedef ::im_pickit_msgs::CameraList_<std::allocator<void> > CameraList;

typedef boost::shared_ptr< ::im_pickit_msgs::CameraList > CameraListPtr;
typedef boost::shared_ptr< ::im_pickit_msgs::CameraList const> CameraListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::CameraList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::CameraList_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::im_pickit_msgs::CameraList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::CameraList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::CameraList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::CameraList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::CameraList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::CameraList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::CameraList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e437b032a8e9ff1590a662fd97c982f9";
  }

  static const char* value(const ::im_pickit_msgs::CameraList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe437b032a8e9ff15ULL;
  static const uint64_t static_value2 = 0x90a662fd97c982f9ULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::CameraList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/CameraList";
  }

  static const char* value(const ::im_pickit_msgs::CameraList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::CameraList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "CameraConfig[] cameras        # List of known cameras.\n\
CameraState[] camera_states   # Corresponding camera states.\n\
\n\
================================================================================\n\
MSG: im_pickit_msgs/CameraConfig\n\
# Message fields\n\
string name                                 # name (=namespace) of the camera (unique!)\n\
string serial                               # Serial number.\n\
\n\
================================================================================\n\
MSG: im_pickit_msgs/CameraState\n\
uint8 STATE_REGISTERED    = 1\n\
uint8 STATE_CONNECTED     = 2\n\
uint8 STATE_DISCONNECTED  = 3\n\
\n\
uint8 state   # Camera state\n\
";
  }

  static const char* value(const ::im_pickit_msgs::CameraList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::CameraList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cameras);
      stream.next(m.camera_states);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CameraList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::CameraList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::im_pickit_msgs::CameraList_<ContainerAllocator>& v)
  {
    s << indent << "cameras[]" << std::endl;
    for (size_t i = 0; i < v.cameras.size(); ++i)
    {
      s << indent << "  cameras[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::im_pickit_msgs::CameraConfig_<ContainerAllocator> >::stream(s, indent + "    ", v.cameras[i]);
    }
    s << indent << "camera_states[]" << std::endl;
    for (size_t i = 0; i < v.camera_states.size(); ++i)
    {
      s << indent << "  camera_states[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::im_pickit_msgs::CameraState_<ContainerAllocator> >::stream(s, indent + "    ", v.camera_states[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_CAMERALIST_H
