// Generated by gencpp from file im_pickit_msgs/PickitState.msg
// DO NOT EDIT!


#ifndef IM_PICKIT_MSGS_MESSAGE_PICKITSTATE_H
#define IM_PICKIT_MSGS_MESSAGE_PICKITSTATE_H


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
struct PickitState_
{
  typedef PickitState_<ContainerAllocator> Type;

  PickitState_()
    {
    }
  PickitState_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }




    static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  IDLE;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  ROI;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  CALIBRATION;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  TESTING;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  TEST;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  RUNNING;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  TEACH_MODEL;
 

  typedef boost::shared_ptr< ::im_pickit_msgs::PickitState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::im_pickit_msgs::PickitState_<ContainerAllocator> const> ConstPtr;

}; // struct PickitState_

typedef ::im_pickit_msgs::PickitState_<std::allocator<void> > PickitState;

typedef boost::shared_ptr< ::im_pickit_msgs::PickitState > PickitStatePtr;
typedef boost::shared_ptr< ::im_pickit_msgs::PickitState const> PickitStateConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      PickitState_<ContainerAllocator>::IDLE =
        
          "root.Idle"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      PickitState_<ContainerAllocator>::ROI =
        
          "root.Region_of_interest"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      PickitState_<ContainerAllocator>::CALIBRATION =
        
          "root.Calibration"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      PickitState_<ContainerAllocator>::TESTING =
        
          "root.Testing"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      PickitState_<ContainerAllocator>::TEST =
        
          "root.Test"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      PickitState_<ContainerAllocator>::RUNNING =
        
          "root.Running"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      PickitState_<ContainerAllocator>::TEACH_MODEL =
        
          "root.Teach_model"
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::im_pickit_msgs::PickitState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::im_pickit_msgs::PickitState_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::im_pickit_msgs::PickitState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::im_pickit_msgs::PickitState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::PickitState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::im_pickit_msgs::PickitState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::PickitState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::im_pickit_msgs::PickitState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::im_pickit_msgs::PickitState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9ef3dc8a4557d0cf9d67cf35dcb7b2af";
  }

  static const char* value(const ::im_pickit_msgs::PickitState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9ef3dc8a4557d0cfULL;
  static const uint64_t static_value2 = 0x9d67cf35dcb7b2afULL;
};

template<class ContainerAllocator>
struct DataType< ::im_pickit_msgs::PickitState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "im_pickit_msgs/PickitState";
  }

  static const char* value(const ::im_pickit_msgs::PickitState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::im_pickit_msgs::PickitState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## Copyright Pick-it 2017\n\
## This message contains Pick-it state constants  ##\n\
\n\
string IDLE=root.Idle\n\
string ROI=root.Region_of_interest\n\
string CALIBRATION=root.Calibration\n\
string TESTING=root.Testing\n\
string TEST=root.Test\n\
string RUNNING=root.Running\n\
string TEACH_MODEL=root.Teach_model\n\
";
  }

  static const char* value(const ::im_pickit_msgs::PickitState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::im_pickit_msgs::PickitState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PickitState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::im_pickit_msgs::PickitState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::im_pickit_msgs::PickitState_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // IM_PICKIT_MSGS_MESSAGE_PICKITSTATE_H
