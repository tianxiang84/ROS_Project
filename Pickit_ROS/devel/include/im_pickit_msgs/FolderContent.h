// Generated by gencpp from file im_pickit_msgs/FolderContent.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_FOLDERCONTENT_H
#define IM_PICKIT_MSGS_MESSAGE_FOLDERCONTENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <im_pickit_msgs/SubfolderContent.h>

namespace im_pickit_msgs
{
template <class ContainerAllocator>
struct FolderContent_
{
  typedef FolderContent_<ContainerAllocator> Type;

  FolderContent_()
    : folder_name()
    , folder_content()  {
    }
  FolderContent_(const ContainerAllocator& _alloc)
    : folder_name(_alloc)
    , folder_content(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _folder_name_type;
  _folder_name_type folder_name;

   typedef std::vector< ::im_pickit_msgs::SubfolderContent_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::im_pickit_msgs::SubfolderContent_<ContainerAllocator> >::other >  _folder_content_type;
  _folder_content_type folder_content;




  typedef boost::shared_ptr< ::im_pickit_msgs::FolderContent_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::FolderContent_<ContainerAllocator> const> ConstPtr;

}; // struct FolderContent_

typedef ::im_pickit_msgs::FolderContent_<std::allocator<void> > FolderContent;

typedef boost::shared_ptr< ::im_pickit_msgs::FolderContent > FolderContentPtr;
typedef boost::shared_ptr< ::im_pickit_msgs::FolderContent const> FolderContentConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::FolderContent_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::FolderContent_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::im_pickit_msgs::FolderContent_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::FolderContent_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::FolderContent_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::FolderContent_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::FolderContent_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::FolderContent_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::FolderContent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b930894bddbcdb7d52f4b6e2fa737db2";
  }

  static const char* value(const ::im_pickit_msgs::FolderContent_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb930894bddbcdb7dULL;
  static const uint64_t static_value2 = 0x52f4b6e2fa737db2ULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::FolderContent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/FolderContent";
  }

  static const char* value(const ::im_pickit_msgs::FolderContent_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::FolderContent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## Copyright Intermodalics 2015\n\
string                                  folder_name         ## This is the absolute path\n\
im_pickit_msgs/SubfolderContent[]       folder_content\n\
\n\
 \n\
================================================================================\n\
MSG: im_pickit_msgs/SubfolderContent\n\
## Copyright Intermodalics 2014\n\
string                  subfolder_name             ## This is the relative name\n\
im_pickit_msgs/File[]   subfolder_files\n\
\n\
================================================================================\n\
MSG: im_pickit_msgs/File\n\
## Copyright Intermodalics 2015\n\
int32        file_id\n\
string       file_name\n\
bool         readonly\n\
";
  }

  static const char* value(const ::im_pickit_msgs::FolderContent_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::FolderContent_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.folder_name);
      stream.next(m.folder_content);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FolderContent_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::FolderContent_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::im_pickit_msgs::FolderContent_<ContainerAllocator>& v)
  {
    s << indent << "folder_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.folder_name);
    s << indent << "folder_content[]" << std::endl;
    for (size_t i = 0; i < v.folder_content.size(); ++i)
    {
      s << indent << "  folder_content[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::im_pickit_msgs::SubfolderContent_<ContainerAllocator> >::stream(s, indent + "    ", v.folder_content[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_FOLDERCONTENT_H