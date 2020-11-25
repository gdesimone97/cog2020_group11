// Generated by gencpp from file naoqi_bridge_msgs/SetString.msg
// DO NOT EDIT!


#ifndef NAOQI_BRIDGE_MSGS_MESSAGE_SETSTRING_H
#define NAOQI_BRIDGE_MSGS_MESSAGE_SETSTRING_H

#include <ros/service_traits.h>


#include <naoqi_bridge_msgs/SetStringRequest.h>
#include <naoqi_bridge_msgs/SetStringResponse.h>


namespace naoqi_bridge_msgs
{

struct SetString
{

typedef SetStringRequest Request;
typedef SetStringResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetString
} // namespace naoqi_bridge_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::naoqi_bridge_msgs::SetString > {
  static const char* value()
  {
    return "e7ac98ca304b04e45988c61adb6bc4ce";
  }

  static const char* value(const ::naoqi_bridge_msgs::SetString&) { return value(); }
};

template<>
struct DataType< ::naoqi_bridge_msgs::SetString > {
  static const char* value()
  {
    return "naoqi_bridge_msgs/SetString";
  }

  static const char* value(const ::naoqi_bridge_msgs::SetString&) { return value(); }
};


// service_traits::MD5Sum< ::naoqi_bridge_msgs::SetStringRequest> should match 
// service_traits::MD5Sum< ::naoqi_bridge_msgs::SetString > 
template<>
struct MD5Sum< ::naoqi_bridge_msgs::SetStringRequest>
{
  static const char* value()
  {
    return MD5Sum< ::naoqi_bridge_msgs::SetString >::value();
  }
  static const char* value(const ::naoqi_bridge_msgs::SetStringRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::naoqi_bridge_msgs::SetStringRequest> should match 
// service_traits::DataType< ::naoqi_bridge_msgs::SetString > 
template<>
struct DataType< ::naoqi_bridge_msgs::SetStringRequest>
{
  static const char* value()
  {
    return DataType< ::naoqi_bridge_msgs::SetString >::value();
  }
  static const char* value(const ::naoqi_bridge_msgs::SetStringRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::naoqi_bridge_msgs::SetStringResponse> should match 
// service_traits::MD5Sum< ::naoqi_bridge_msgs::SetString > 
template<>
struct MD5Sum< ::naoqi_bridge_msgs::SetStringResponse>
{
  static const char* value()
  {
    return MD5Sum< ::naoqi_bridge_msgs::SetString >::value();
  }
  static const char* value(const ::naoqi_bridge_msgs::SetStringResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::naoqi_bridge_msgs::SetStringResponse> should match 
// service_traits::DataType< ::naoqi_bridge_msgs::SetString > 
template<>
struct DataType< ::naoqi_bridge_msgs::SetStringResponse>
{
  static const char* value()
  {
    return DataType< ::naoqi_bridge_msgs::SetString >::value();
  }
  static const char* value(const ::naoqi_bridge_msgs::SetStringResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NAOQI_BRIDGE_MSGS_MESSAGE_SETSTRING_H
