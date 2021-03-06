// Generated by gencpp from file im_pickit_msgs/StatusError.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_STATUSERROR_H
#define IM_PICKIT_MSGS_MESSAGE_STATUSERROR_H


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
struct StatusError_
{
  typedef StatusError_<ContainerAllocator> Type;

  StatusError_()
    {
    }
  StatusError_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }




    static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  CATEGORY;
     enum { POSE_CONTAINS_NANS = 1000u };
     enum { INVALID_ROTATION_MATRIX = 1001u };
     enum { SIZE_LARGER_THAN_ROI_BOX = 1002u };
     enum { INSUFFICIENT_INLIER_POINTS = 1003u };
 

  typedef boost::shared_ptr< ::im_pickit_msgs::StatusError_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::StatusError_<ContainerAllocator> const> ConstPtr;

}; // struct StatusError_

typedef ::im_pickit_msgs::StatusError_<std::allocator<void> > StatusError;

typedef boost::shared_ptr< ::im_pickit_msgs::StatusError > StatusErrorPtr;
typedef boost::shared_ptr< ::im_pickit_msgs::StatusError const> StatusErrorConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      StatusError_<ContainerAllocator>::CATEGORY =
        
          "ERROR"
        
        ;
   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::StatusError_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::StatusError_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::im_pickit_msgs::StatusError_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::StatusError_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::StatusError_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::StatusError_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::StatusError_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::StatusError_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::StatusError_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3ef08eadec9d53cd5205e31b7c108462";
  }

  static const char* value(const ::im_pickit_msgs::StatusError_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3ef08eadec9d53cdULL;
  static const uint64_t static_value2 = 0x5205e31b7c108462ULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::StatusError_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/StatusError";
  }

  static const char* value(const ::im_pickit_msgs::StatusError_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::StatusError_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# These objects (status >= 1000)\n\
# will not get a visualization marker (due to a mathematical error, ie bug)\n\
\n\
string CATEGORY = ERROR\n\
\n\
### Enums:\n\
\n\
uint16 POSE_CONTAINS_NANS = 1000\n\
uint16 INVALID_ROTATION_MATRIX = 1001\n\
uint16 SIZE_LARGER_THAN_ROI_BOX = 1002\n\
uint16 INSUFFICIENT_INLIER_POINTS = 1003\n\
";
  }

  static const char* value(const ::im_pickit_msgs::StatusError_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::StatusError_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StatusError_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::StatusError_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::im_pickit_msgs::StatusError_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_STATUSERROR_H
