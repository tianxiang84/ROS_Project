// Generated by gencpp from file im_pickit_msgs/StatusUnpickable.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_STATUSUNPICKABLE_H
#define IM_PICKIT_MSGS_MESSAGE_STATUSUNPICKABLE_H


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
struct StatusUnpickable_
{
  typedef StatusUnpickable_<ContainerAllocator> Type;

  StatusUnpickable_()
    {
    }
  StatusUnpickable_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }




    static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  CATEGORY;
     enum { CENTER_OUTSIDE_ROI = 0u };
     enum { INVALID_BORDER_DISTANCE = 10u };
     enum { COLLISION_WITH_BOX = 20u };
     enum { COLLISION_WITH_POINT_CLOUD = 30u };
     enum { INVALID_Z_AXIS_ORIENTATION = 40u };
     enum { COLLISION_WITH_BOX_IN_BETWEEN_OBJECT_AND_ROI = 50u };
 

  typedef boost::shared_ptr< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> const> ConstPtr;

}; // struct StatusUnpickable_

typedef ::im_pickit_msgs::StatusUnpickable_<std::allocator<void> > StatusUnpickable;

typedef boost::shared_ptr< ::im_pickit_msgs::StatusUnpickable > StatusUnpickablePtr;
typedef boost::shared_ptr< ::im_pickit_msgs::StatusUnpickable const> StatusUnpickableConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      StatusUnpickable_<ContainerAllocator>::CATEGORY =
        
          "UNPICKABLE"
        
        ;
   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7a651c88be4b7987ea0a0fd56c2152f2";
  }

  static const char* value(const ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7a651c88be4b7987ULL;
  static const uint64_t static_value2 = 0xea0a0fd56c2152f2ULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/StatusUnpickable";
  }

  static const char* value(const ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# These objects (0 <= status <= 99)\n\
# will get an orange colored visualization marker.\n\
\n\
string CATEGORY = UNPICKABLE\n\
\n\
### Enums:\n\
\n\
uint16 CENTER_OUTSIDE_ROI = 0\n\
\n\
uint16 INVALID_BORDER_DISTANCE = 10\n\
\n\
uint16 COLLISION_WITH_BOX = 20\n\
\n\
uint16 COLLISION_WITH_POINT_CLOUD = 30\n\
\n\
uint16 INVALID_Z_AXIS_ORIENTATION = 40\n\
\n\
uint16 COLLISION_WITH_BOX_IN_BETWEEN_OBJECT_AND_ROI = 50\n\
";
  }

  static const char* value(const ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StatusUnpickable_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::im_pickit_msgs::StatusUnpickable_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_STATUSUNPICKABLE_H
