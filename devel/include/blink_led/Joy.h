// Generated by gencpp from file blink_led/Joy.msg
// DO NOT EDIT!


#ifndef BLINK_LED_MESSAGE_JOY_H
#define BLINK_LED_MESSAGE_JOY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace blink_led
{
template <class ContainerAllocator>
struct Joy_
{
  typedef Joy_<ContainerAllocator> Type;

  Joy_()
    : x()
    , y()
    , rot()
    , throttle()  {
    }
  Joy_(const ContainerAllocator& _alloc)
    : x(_alloc)
    , y(_alloc)
    , rot(_alloc)
    , throttle(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _x_type;
  _x_type x;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _y_type;
  _y_type y;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _rot_type;
  _rot_type rot;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _throttle_type;
  _throttle_type throttle;




  typedef boost::shared_ptr< ::blink_led::Joy_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::blink_led::Joy_<ContainerAllocator> const> ConstPtr;

}; // struct Joy_

typedef ::blink_led::Joy_<std::allocator<void> > Joy;

typedef boost::shared_ptr< ::blink_led::Joy > JoyPtr;
typedef boost::shared_ptr< ::blink_led::Joy const> JoyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::blink_led::Joy_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::blink_led::Joy_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace blink_led

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'blink_led': ['/home/ayushgarg/catkin_ws/src/blink_led/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::blink_led::Joy_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::blink_led::Joy_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::blink_led::Joy_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::blink_led::Joy_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::blink_led::Joy_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::blink_led::Joy_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::blink_led::Joy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ed918a0c2fe838fed35fc22e2bcab1be";
  }

  static const char* value(const ::blink_led::Joy_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xed918a0c2fe838feULL;
  static const uint64_t static_value2 = 0xd35fc22e2bcab1beULL;
};

template<class ContainerAllocator>
struct DataType< ::blink_led::Joy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "blink_led/Joy";
  }

  static const char* value(const ::blink_led::Joy_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::blink_led::Joy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string x\n\
string y\n\
string rot\n\
string throttle\n\
";
  }

  static const char* value(const ::blink_led::Joy_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::blink_led::Joy_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.rot);
      stream.next(m.throttle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Joy_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::blink_led::Joy_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::blink_led::Joy_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.y);
    s << indent << "rot: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.rot);
    s << indent << "throttle: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.throttle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BLINK_LED_MESSAGE_JOY_H