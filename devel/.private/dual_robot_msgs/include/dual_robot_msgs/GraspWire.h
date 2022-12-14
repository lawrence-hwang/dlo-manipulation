// Generated by gencpp from file dual_robot_msgs/GraspWire.msg
// DO NOT EDIT!


#ifndef DUAL_ROBOT_MSGS_MESSAGE_GRASPWIRE_H
#define DUAL_ROBOT_MSGS_MESSAGE_GRASPWIRE_H

#include <ros/service_traits.h>


#include <dual_robot_msgs/GraspWireRequest.h>
#include <dual_robot_msgs/GraspWireResponse.h>


namespace dual_robot_msgs
{

struct GraspWire
{

typedef GraspWireRequest Request;
typedef GraspWireResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GraspWire
} // namespace dual_robot_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dual_robot_msgs::GraspWire > {
  static const char* value()
  {
    return "e606f67dd60a8cc1664155100285b04a";
  }

  static const char* value(const ::dual_robot_msgs::GraspWire&) { return value(); }
};

template<>
struct DataType< ::dual_robot_msgs::GraspWire > {
  static const char* value()
  {
    return "dual_robot_msgs/GraspWire";
  }

  static const char* value(const ::dual_robot_msgs::GraspWire&) { return value(); }
};


// service_traits::MD5Sum< ::dual_robot_msgs::GraspWireRequest> should match
// service_traits::MD5Sum< ::dual_robot_msgs::GraspWire >
template<>
struct MD5Sum< ::dual_robot_msgs::GraspWireRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dual_robot_msgs::GraspWire >::value();
  }
  static const char* value(const ::dual_robot_msgs::GraspWireRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dual_robot_msgs::GraspWireRequest> should match
// service_traits::DataType< ::dual_robot_msgs::GraspWire >
template<>
struct DataType< ::dual_robot_msgs::GraspWireRequest>
{
  static const char* value()
  {
    return DataType< ::dual_robot_msgs::GraspWire >::value();
  }
  static const char* value(const ::dual_robot_msgs::GraspWireRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dual_robot_msgs::GraspWireResponse> should match
// service_traits::MD5Sum< ::dual_robot_msgs::GraspWire >
template<>
struct MD5Sum< ::dual_robot_msgs::GraspWireResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dual_robot_msgs::GraspWire >::value();
  }
  static const char* value(const ::dual_robot_msgs::GraspWireResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dual_robot_msgs::GraspWireResponse> should match
// service_traits::DataType< ::dual_robot_msgs::GraspWire >
template<>
struct DataType< ::dual_robot_msgs::GraspWireResponse>
{
  static const char* value()
  {
    return DataType< ::dual_robot_msgs::GraspWire >::value();
  }
  static const char* value(const ::dual_robot_msgs::GraspWireResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DUAL_ROBOT_MSGS_MESSAGE_GRASPWIRE_H
