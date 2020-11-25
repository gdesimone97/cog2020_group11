// Generated by gencpp from file naoqi_bridge_msgs/OrthogonalSecurityDistanceRequest.msg
// DO NOT EDIT!


#ifndef NAOQI_BRIDGE_MSGS_MESSAGE_ORTHOGONALSECURITYDISTANCEREQUEST_H
#define NAOQI_BRIDGE_MSGS_MESSAGE_ORTHOGONALSECURITYDISTANCEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>

namespace naoqi_bridge_msgs
{
template <class ContainerAllocator>
struct OrthogonalSecurityDistanceRequest_
{
  typedef OrthogonalSecurityDistanceRequest_<ContainerAllocator> Type;

  OrthogonalSecurityDistanceRequest_()
    : orthogonal_distance()  {
    }
  OrthogonalSecurityDistanceRequest_(const ContainerAllocator& _alloc)
    : orthogonal_distance(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _orthogonal_distance_type;
  _orthogonal_distance_type orthogonal_distance;





  typedef boost::shared_ptr< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct OrthogonalSecurityDistanceRequest_

typedef ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<std::allocator<void> > OrthogonalSecurityDistanceRequest;

typedef boost::shared_ptr< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest > OrthogonalSecurityDistanceRequestPtr;
typedef boost::shared_ptr< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest const> OrthogonalSecurityDistanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace naoqi_bridge_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/melodic/share/nav_msgs/cmake/../msg'], 'naoqi_bridge_msgs': ['/home/mivia/cog2020_group11/src/naoqi_bridge_msgs/msg', '/home/mivia/cog2020_group11/devel/.private/naoqi_bridge_msgs/share/naoqi_bridge_msgs/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/melodic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "69e9b81707b13ae1b2bceacbb0d41137";
  }

  static const char* value(const ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x69e9b81707b13ae1ULL;
  static const uint64_t static_value2 = 0xb2bceacbb0d41137ULL;
};

template<class ContainerAllocator>
struct DataType< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "naoqi_bridge_msgs/OrthogonalSecurityDistanceRequest";
  }

  static const char* value(const ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
std_msgs/Float32 orthogonal_distance\n\
\n\
================================================================================\n\
MSG: std_msgs/Float32\n\
float32 data\n\
";
  }

  static const char* value(const ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.orthogonal_distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OrthogonalSecurityDistanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest_<ContainerAllocator>& v)
  {
    s << indent << "orthogonal_distance: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.orthogonal_distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAOQI_BRIDGE_MSGS_MESSAGE_ORTHOGONALSECURITYDISTANCEREQUEST_H
