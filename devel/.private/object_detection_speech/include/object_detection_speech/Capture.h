// Generated by gencpp from file object_detection_speech/Capture.msg
// DO NOT EDIT!


#ifndef OBJECT_DETECTION_SPEECH_MESSAGE_CAPTURE_H
#define OBJECT_DETECTION_SPEECH_MESSAGE_CAPTURE_H

#include <ros/service_traits.h>


#include <object_detection_speech/CaptureRequest.h>
#include <object_detection_speech/CaptureResponse.h>


namespace object_detection_speech
{

struct Capture
{

typedef CaptureRequest Request;
typedef CaptureResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Capture
} // namespace object_detection_speech


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::object_detection_speech::Capture > {
  static const char* value()
  {
    return "e27848a10f8e7e4030443887dfea101b";
  }

  static const char* value(const ::object_detection_speech::Capture&) { return value(); }
};

template<>
struct DataType< ::object_detection_speech::Capture > {
  static const char* value()
  {
    return "object_detection_speech/Capture";
  }

  static const char* value(const ::object_detection_speech::Capture&) { return value(); }
};


// service_traits::MD5Sum< ::object_detection_speech::CaptureRequest> should match 
// service_traits::MD5Sum< ::object_detection_speech::Capture > 
template<>
struct MD5Sum< ::object_detection_speech::CaptureRequest>
{
  static const char* value()
  {
    return MD5Sum< ::object_detection_speech::Capture >::value();
  }
  static const char* value(const ::object_detection_speech::CaptureRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::object_detection_speech::CaptureRequest> should match 
// service_traits::DataType< ::object_detection_speech::Capture > 
template<>
struct DataType< ::object_detection_speech::CaptureRequest>
{
  static const char* value()
  {
    return DataType< ::object_detection_speech::Capture >::value();
  }
  static const char* value(const ::object_detection_speech::CaptureRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::object_detection_speech::CaptureResponse> should match 
// service_traits::MD5Sum< ::object_detection_speech::Capture > 
template<>
struct MD5Sum< ::object_detection_speech::CaptureResponse>
{
  static const char* value()
  {
    return MD5Sum< ::object_detection_speech::Capture >::value();
  }
  static const char* value(const ::object_detection_speech::CaptureResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::object_detection_speech::CaptureResponse> should match 
// service_traits::DataType< ::object_detection_speech::Capture > 
template<>
struct DataType< ::object_detection_speech::CaptureResponse>
{
  static const char* value()
  {
    return DataType< ::object_detection_speech::Capture >::value();
  }
  static const char* value(const ::object_detection_speech::CaptureResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // OBJECT_DETECTION_SPEECH_MESSAGE_CAPTURE_H
