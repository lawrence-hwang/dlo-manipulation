// Generated by gencpp from file wire_modeling_msgs/ProcessPointCloudResponse.msg
// DO NOT EDIT!


#ifndef WIRE_MODELING_MSGS_MESSAGE_PROCESSPOINTCLOUDRESPONSE_H
#define WIRE_MODELING_MSGS_MESSAGE_PROCESSPOINTCLOUDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseArray.h>
#include <geometry_msgs/PoseArray.h>

namespace wire_modeling_msgs
{
template <class ContainerAllocator>
struct ProcessPointCloudResponse_
{
  typedef ProcessPointCloudResponse_<ContainerAllocator> Type;

  ProcessPointCloudResponse_()
    : pose()
    , wire_length(0.0)
    , raw_points()
    , wire_class()  {
    }
  ProcessPointCloudResponse_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , wire_length(0.0)
    , raw_points(_alloc)
    , wire_class(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseArray_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef double _wire_length_type;
  _wire_length_type wire_length;

   typedef  ::geometry_msgs::PoseArray_<ContainerAllocator>  _raw_points_type;
  _raw_points_type raw_points;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _wire_class_type;
  _wire_class_type wire_class;





  typedef boost::shared_ptr< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ProcessPointCloudResponse_

typedef ::wire_modeling_msgs::ProcessPointCloudResponse_<std::allocator<void> > ProcessPointCloudResponse;

typedef boost::shared_ptr< ::wire_modeling_msgs::ProcessPointCloudResponse > ProcessPointCloudResponsePtr;
typedef boost::shared_ptr< ::wire_modeling_msgs::ProcessPointCloudResponse const> ProcessPointCloudResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator1> & lhs, const ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose &&
    lhs.wire_length == rhs.wire_length &&
    lhs.raw_points == rhs.raw_points &&
    lhs.wire_class == rhs.wire_class;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator1> & lhs, const ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace wire_modeling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4683210ecd48c7100abc847b856df3fc";
  }

  static const char* value(const ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4683210ecd48c710ULL;
  static const uint64_t static_value2 = 0x0abc847b856df3fcULL;
};

template<class ContainerAllocator>
struct DataType< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wire_modeling_msgs/ProcessPointCloudResponse";
  }

  static const char* value(const ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseArray pose \n"
"float64 wire_length\n"
"geometry_msgs/PoseArray raw_points\n"
"string wire_class\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseArray\n"
"# An array of poses with a header for global reference.\n"
"\n"
"Header header\n"
"\n"
"Pose[] poses\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.wire_length);
      stream.next(m.raw_points);
      stream.next(m.wire_class);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ProcessPointCloudResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wire_modeling_msgs::ProcessPointCloudResponse_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseArray_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "wire_length: ";
    Printer<double>::stream(s, indent + "  ", v.wire_length);
    s << indent << "raw_points: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseArray_<ContainerAllocator> >::stream(s, indent + "  ", v.raw_points);
    s << indent << "wire_class: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.wire_class);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WIRE_MODELING_MSGS_MESSAGE_PROCESSPOINTCLOUDRESPONSE_H
