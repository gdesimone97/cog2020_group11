// Generated by gencpp from file object_detection_speech/CaptureRequest.msg
// DO NOT EDIT!


#ifndef OBJECT_DETECTION_SPEECH_MESSAGE_CAPTUREREQUEST_H
#define OBJECT_DETECTION_SPEECH_MESSAGE_CAPTUREREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace object_detection_speech
{
template <class ContainerAllocator>
struct CaptureRequest_
{
  typedef CaptureRequest_<ContainerAllocator> Type;

  CaptureRequest_()
    : pos(0)  {
    }
  CaptureRequest_(const ContainerAllocator& _alloc)
    : pos(0)  {
  (void)_alloc;
    }



   typedef int8_t _pos_type;
  _pos_type pos;





  typedef boost::shared_ptr< ::object_detection_speech::CaptureRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_detection_speech::CaptureRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CaptureRequest_

typedef ::object_detection_speech::CaptureRequest_<std::allocator<void> > CaptureRequest;

typedef boost::shared_ptr< ::object_detection_speech::CaptureRequest > CaptureRequestPtr;
typedef boost::shared_ptr< ::object_detection_speech::CaptureRequest const> CaptureRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_detection_speech::CaptureRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_detection_speech::CaptureRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace object_detection_speech

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'object_detection_speech': ['/home/mivia/cog2020_group11/src/object_detection_speech/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::object_detection_speech::CaptureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_detection_speech::CaptureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_detection_speech::CaptureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_detection_speech::CaptureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_detection_speech::CaptureRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_detection_speech::CaptureRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_detection_speech::CaptureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "82b076b0db1717b26c92c819d52e9d17";
  }

  static const char* value(const ::object_detection_speech::CaptureRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x82b076b0db1717b2ULL;
  static const uint64_t static_value2 = 0x6c92c819d52e9d17ULL;
};

template<class ContainerAllocator>
struct DataType< ::object_detection_speech::CaptureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_detection_speech/CaptureRequest";
  }

  static const char* value(const ::object_detection_speech::CaptureRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_detection_speech::CaptureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 pos\n\
";
  }

  static const char* value(const ::object_detection_speech::CaptureRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_detection_speech::CaptureRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CaptureRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_detection_speech::CaptureRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_detection_speech::CaptureRequest_<ContainerAllocator>& v)
  {
    s << indent << "pos: ";
    Printer<int8_t>::stream(s, indent + "  ", v.pos);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_DETECTION_SPEECH_MESSAGE_CAPTUREREQUEST_H
