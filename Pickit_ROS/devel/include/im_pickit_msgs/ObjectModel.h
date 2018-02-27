// Generated by gencpp from file im_pickit_msgs/ObjectModel.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_OBJECTMODEL_H
#define IM_PICKIT_MSGS_MESSAGE_OBJECTMODEL_H


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
struct ObjectModel_
{
  typedef ObjectModel_<ContainerAllocator> Type;

  ObjectModel_()
    : type(0)  {
    }
  ObjectModel_(const ContainerAllocator& _alloc)
    : type(0)  {
  (void)_alloc;
    }



   typedef uint8_t _type_type;
  _type_type type;


    enum { NONE = 0u };
     enum { SQUARE = 21u };
     enum { RECTANGLE = 22u };
     enum { CIRCLE = 23u };
     enum { ELLIPSE = 24u };
     enum { CYLINDER = 32u };
     enum { SPHERE = 33u };
     enum { POINT_CLOUD = 35u };
     enum { BLOB = 50u };
     enum { CLUSTER = 250u };
 

  typedef boost::shared_ptr< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> const> ConstPtr;

}; // struct ObjectModel_

typedef ::im_pickit_msgs::ObjectModel_<std::allocator<void> > ObjectModel;

typedef boost::shared_ptr< ::im_pickit_msgs::ObjectModel > ObjectModelPtr;
typedef boost::shared_ptr< ::im_pickit_msgs::ObjectModel const> ObjectModelConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::ObjectModel_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "49dc4c216781b1b3ce8e8e9d6c3be4e6";
  }

  static const char* value(const ::im_pickit_msgs::ObjectModel_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x49dc4c216781b1b3ULL;
  static const uint64_t static_value2 = 0xce8e8e9d6c3be4e6ULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/ObjectModel";
  }

  static const char* value(const ::im_pickit_msgs::ObjectModel_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Copyright (c) 2017, Pick-it NV.\n\
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
";
  }

  static const char* value(const ::im_pickit_msgs::ObjectModel_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjectModel_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::ObjectModel_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::im_pickit_msgs::ObjectModel_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_OBJECTMODEL_H
