// Generated by gencpp from file interbotix_xs_msgs/HexJoy.msg
// DO NOT EDIT!


#ifndef INTERBOTIX_XS_MSGS_MESSAGE_HEXJOY_H
#define INTERBOTIX_XS_MSGS_MESSAGE_HEXJOY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace interbotix_xs_msgs
{
template <class ContainerAllocator>
struct HexJoy_
{
  typedef HexJoy_<ContainerAllocator> Type;

  HexJoy_()
    : world_x_cmd(0)
    , world_y_cmd(0)
    , world_yaw_cmd(0)
    , place_x_cmd(0)
    , place_y_cmd(0)
    , place_z_cmd(0)
    , place_roll_cmd(0)
    , place_pitch_cmd(0)
    , pose_cmd(0)
    , move_type_cmd(0)
    , gait_toggle_cmd(0)
    , leg_toggle_cmd(0)
    , stance_cmd(0)
    , reboot_cmd(0)
    , set_home_pose_cmd(0)
    , speed_cmd(0)
    , speed_toggle_cmd(0)  {
    }
  HexJoy_(const ContainerAllocator& _alloc)
    : world_x_cmd(0)
    , world_y_cmd(0)
    , world_yaw_cmd(0)
    , place_x_cmd(0)
    , place_y_cmd(0)
    , place_z_cmd(0)
    , place_roll_cmd(0)
    , place_pitch_cmd(0)
    , pose_cmd(0)
    , move_type_cmd(0)
    , gait_toggle_cmd(0)
    , leg_toggle_cmd(0)
    , stance_cmd(0)
    , reboot_cmd(0)
    , set_home_pose_cmd(0)
    , speed_cmd(0)
    , speed_toggle_cmd(0)  {
  (void)_alloc;
    }



   typedef int8_t _world_x_cmd_type;
  _world_x_cmd_type world_x_cmd;

   typedef int8_t _world_y_cmd_type;
  _world_y_cmd_type world_y_cmd;

   typedef int8_t _world_yaw_cmd_type;
  _world_yaw_cmd_type world_yaw_cmd;

   typedef int8_t _place_x_cmd_type;
  _place_x_cmd_type place_x_cmd;

   typedef int8_t _place_y_cmd_type;
  _place_y_cmd_type place_y_cmd;

   typedef int8_t _place_z_cmd_type;
  _place_z_cmd_type place_z_cmd;

   typedef int8_t _place_roll_cmd_type;
  _place_roll_cmd_type place_roll_cmd;

   typedef int8_t _place_pitch_cmd_type;
  _place_pitch_cmd_type place_pitch_cmd;

   typedef int8_t _pose_cmd_type;
  _pose_cmd_type pose_cmd;

   typedef int8_t _move_type_cmd_type;
  _move_type_cmd_type move_type_cmd;

   typedef int8_t _gait_toggle_cmd_type;
  _gait_toggle_cmd_type gait_toggle_cmd;

   typedef int8_t _leg_toggle_cmd_type;
  _leg_toggle_cmd_type leg_toggle_cmd;

   typedef int8_t _stance_cmd_type;
  _stance_cmd_type stance_cmd;

   typedef int8_t _reboot_cmd_type;
  _reboot_cmd_type reboot_cmd;

   typedef int8_t _set_home_pose_cmd_type;
  _set_home_pose_cmd_type set_home_pose_cmd;

   typedef int8_t _speed_cmd_type;
  _speed_cmd_type speed_cmd;

   typedef int8_t _speed_toggle_cmd_type;
  _speed_toggle_cmd_type speed_toggle_cmd;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(WORLD_X_INC)
  #undef WORLD_X_INC
#endif
#if defined(_WIN32) && defined(WORLD_X_DEC)
  #undef WORLD_X_DEC
#endif
#if defined(_WIN32) && defined(WORLD_Y_INC)
  #undef WORLD_Y_INC
#endif
#if defined(_WIN32) && defined(WORLD_Y_DEC)
  #undef WORLD_Y_DEC
#endif
#if defined(_WIN32) && defined(WORLD_YAW_CCW)
  #undef WORLD_YAW_CCW
#endif
#if defined(_WIN32) && defined(WORLD_YAW_CW)
  #undef WORLD_YAW_CW
#endif
#if defined(_WIN32) && defined(PLACE_X_INC)
  #undef PLACE_X_INC
#endif
#if defined(_WIN32) && defined(PLACE_X_DEC)
  #undef PLACE_X_DEC
#endif
#if defined(_WIN32) && defined(PLACE_Y_INC)
  #undef PLACE_Y_INC
#endif
#if defined(_WIN32) && defined(PLACE_Y_DEC)
  #undef PLACE_Y_DEC
#endif
#if defined(_WIN32) && defined(PLACE_Z_INC)
  #undef PLACE_Z_INC
#endif
#if defined(_WIN32) && defined(PLACE_Z_DEC)
  #undef PLACE_Z_DEC
#endif
#if defined(_WIN32) && defined(PLACE_ROLL_CCW)
  #undef PLACE_ROLL_CCW
#endif
#if defined(_WIN32) && defined(PLACE_ROLL_CW)
  #undef PLACE_ROLL_CW
#endif
#if defined(_WIN32) && defined(PLACE_PITCH_UP)
  #undef PLACE_PITCH_UP
#endif
#if defined(_WIN32) && defined(PLACE_PITCH_DOWN)
  #undef PLACE_PITCH_DOWN
#endif
#if defined(_WIN32) && defined(MOVE_HEXAPOD)
  #undef MOVE_HEXAPOD
#endif
#if defined(_WIN32) && defined(MOVE_LEG)
  #undef MOVE_LEG
#endif
#if defined(_WIN32) && defined(HOME_POSE)
  #undef HOME_POSE
#endif
#if defined(_WIN32) && defined(SLEEP_POSE)
  #undef SLEEP_POSE
#endif
#if defined(_WIN32) && defined(GAIT_NEXT)
  #undef GAIT_NEXT
#endif
#if defined(_WIN32) && defined(GAIT_PREVIOUS)
  #undef GAIT_PREVIOUS
#endif
#if defined(_WIN32) && defined(LEG_NEXT)
  #undef LEG_NEXT
#endif
#if defined(_WIN32) && defined(LEG_PREVIOUS)
  #undef LEG_PREVIOUS
#endif
#if defined(_WIN32) && defined(WIDEN_STANCE)
  #undef WIDEN_STANCE
#endif
#if defined(_WIN32) && defined(NARROW_STANCE)
  #undef NARROW_STANCE
#endif
#if defined(_WIN32) && defined(REBOOT_MOTORS)
  #undef REBOOT_MOTORS
#endif
#if defined(_WIN32) && defined(SET_HOME_POSE)
  #undef SET_HOME_POSE
#endif
#if defined(_WIN32) && defined(SPEED_INC)
  #undef SPEED_INC
#endif
#if defined(_WIN32) && defined(SPEED_DEC)
  #undef SPEED_DEC
#endif
#if defined(_WIN32) && defined(SPEED_COURSE)
  #undef SPEED_COURSE
#endif
#if defined(_WIN32) && defined(SPEED_FINE)
  #undef SPEED_FINE
#endif

  enum {
    WORLD_X_INC = 1,
    WORLD_X_DEC = 2,
    WORLD_Y_INC = 3,
    WORLD_Y_DEC = 4,
    WORLD_YAW_CCW = 5,
    WORLD_YAW_CW = 6,
    PLACE_X_INC = 7,
    PLACE_X_DEC = 8,
    PLACE_Y_INC = 9,
    PLACE_Y_DEC = 10,
    PLACE_Z_INC = 11,
    PLACE_Z_DEC = 12,
    PLACE_ROLL_CCW = 13,
    PLACE_ROLL_CW = 14,
    PLACE_PITCH_UP = 15,
    PLACE_PITCH_DOWN = 16,
    MOVE_HEXAPOD = 17,
    MOVE_LEG = 18,
    HOME_POSE = 19,
    SLEEP_POSE = 20,
    GAIT_NEXT = 21,
    GAIT_PREVIOUS = 22,
    LEG_NEXT = 23,
    LEG_PREVIOUS = 24,
    WIDEN_STANCE = 25,
    NARROW_STANCE = 26,
    REBOOT_MOTORS = 27,
    SET_HOME_POSE = 28,
    SPEED_INC = 29,
    SPEED_DEC = 30,
    SPEED_COURSE = 31,
    SPEED_FINE = 32,
  };


  typedef boost::shared_ptr< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> const> ConstPtr;

}; // struct HexJoy_

typedef ::interbotix_xs_msgs::HexJoy_<std::allocator<void> > HexJoy;

typedef boost::shared_ptr< ::interbotix_xs_msgs::HexJoy > HexJoyPtr;
typedef boost::shared_ptr< ::interbotix_xs_msgs::HexJoy const> HexJoyConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::interbotix_xs_msgs::HexJoy_<ContainerAllocator1> & lhs, const ::interbotix_xs_msgs::HexJoy_<ContainerAllocator2> & rhs)
{
  return lhs.world_x_cmd == rhs.world_x_cmd &&
    lhs.world_y_cmd == rhs.world_y_cmd &&
    lhs.world_yaw_cmd == rhs.world_yaw_cmd &&
    lhs.place_x_cmd == rhs.place_x_cmd &&
    lhs.place_y_cmd == rhs.place_y_cmd &&
    lhs.place_z_cmd == rhs.place_z_cmd &&
    lhs.place_roll_cmd == rhs.place_roll_cmd &&
    lhs.place_pitch_cmd == rhs.place_pitch_cmd &&
    lhs.pose_cmd == rhs.pose_cmd &&
    lhs.move_type_cmd == rhs.move_type_cmd &&
    lhs.gait_toggle_cmd == rhs.gait_toggle_cmd &&
    lhs.leg_toggle_cmd == rhs.leg_toggle_cmd &&
    lhs.stance_cmd == rhs.stance_cmd &&
    lhs.reboot_cmd == rhs.reboot_cmd &&
    lhs.set_home_pose_cmd == rhs.set_home_pose_cmd &&
    lhs.speed_cmd == rhs.speed_cmd &&
    lhs.speed_toggle_cmd == rhs.speed_toggle_cmd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::interbotix_xs_msgs::HexJoy_<ContainerAllocator1> & lhs, const ::interbotix_xs_msgs::HexJoy_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace interbotix_xs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "99b1d8cef626ff2a04f51ab2f81ac80a";
  }

  static const char* value(const ::interbotix_xs_msgs::HexJoy_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x99b1d8cef626ff2aULL;
  static const uint64_t static_value2 = 0x04f51ab2f81ac80aULL;
};

template<class ContainerAllocator>
struct DataType< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "interbotix_xs_msgs/HexJoy";
  }

  static const char* value(const ::interbotix_xs_msgs::HexJoy_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message is used specifically in the interbotix_xshexapod_joy package\n"
"#\n"
"# Maps raw 'joy' commands to more specific ones to control an Interbotix hexapod\n"
"\n"
"# enum values that define the joystick controls for the robot\n"
"\n"
"#########################################################################################################\n"
"\n"
"# Command Options to move the Hexapod in the 'world' or in 'place'\n"
"# World Control\n"
"int8 WORLD_X_INC = 1\n"
"int8 WORLD_X_DEC = 2\n"
"int8 WORLD_Y_INC = 3\n"
"int8 WORLD_Y_DEC = 4\n"
"int8 WORLD_YAW_CCW = 5\n"
"int8 WORLD_YAW_CW = 6\n"
"\n"
"# In Place Control\n"
"int8 PLACE_X_INC = 7\n"
"int8 PLACE_X_DEC = 8\n"
"int8 PLACE_Y_INC = 9\n"
"int8 PLACE_Y_DEC = 10\n"
"int8 PLACE_Z_INC = 11\n"
"int8 PLACE_Z_DEC = 12\n"
"int8 PLACE_ROLL_CCW = 13\n"
"int8 PLACE_ROLL_CW = 14\n"
"int8 PLACE_PITCH_UP = 15\n"
"int8 PLACE_PITCH_DOWN = 16\n"
"\n"
"# Move Type\n"
"int8 MOVE_HEXAPOD = 17\n"
"int8 MOVE_LEG = 18\n"
"\n"
"# Pose Control\n"
"int8 HOME_POSE = 19\n"
"int8 SLEEP_POSE = 20\n"
"\n"
"#########################################################################################################\n"
"\n"
"# Customize configurations for the Interbotix Hexapod\n"
"\n"
"# Cycle through the various gaits when in 'move_hexapod' mode\n"
"int8 GAIT_NEXT = 21\n"
"int8 GAIT_PREVIOUS = 22\n"
"\n"
"# Cycle through the legs when in 'move_leg' mode\n"
"int8 LEG_NEXT = 23\n"
"int8 LEG_PREVIOUS = 24\n"
"\n"
"# Widen or narrow the hexapod's stance\n"
"int8 WIDEN_STANCE = 25\n"
"int8 NARROW_STANCE = 26\n"
"\n"
"# Reboot motors if necessary\n"
"int8 REBOOT_MOTORS = 27\n"
"\n"
"# Set the current stance and hexapod height to be the new 'Home Pose'\n"
"int8 SET_HOME_POSE = 28\n"
"\n"
"# Inc/Dec speed\n"
"int8 SPEED_INC = 29\n"
"int8 SPEED_DEC = 30\n"
"\n"
"# Quickly toggle between a fast and slow speed setting\n"
"int8 SPEED_COURSE = 31\n"
"int8 SPEED_FINE = 32\n"
"\n"
"#########################################################################################################\n"
"\n"
"# Control the motion of the Interbotix Hexapod\n"
"int8 world_x_cmd\n"
"int8 world_y_cmd\n"
"int8 world_yaw_cmd\n"
"\n"
"int8 place_x_cmd\n"
"int8 place_y_cmd\n"
"int8 place_z_cmd\n"
"int8 place_roll_cmd\n"
"int8 place_pitch_cmd\n"
"\n"
"int8 pose_cmd\n"
"int8 move_type_cmd\n"
"\n"
"# Other Options\n"
"int8 gait_toggle_cmd\n"
"int8 leg_toggle_cmd\n"
"int8 stance_cmd\n"
"int8 reboot_cmd\n"
"int8 set_home_pose_cmd\n"
"\n"
"# Speed Configs\n"
"int8 speed_cmd\n"
"int8 speed_toggle_cmd\n"
;
  }

  static const char* value(const ::interbotix_xs_msgs::HexJoy_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.world_x_cmd);
      stream.next(m.world_y_cmd);
      stream.next(m.world_yaw_cmd);
      stream.next(m.place_x_cmd);
      stream.next(m.place_y_cmd);
      stream.next(m.place_z_cmd);
      stream.next(m.place_roll_cmd);
      stream.next(m.place_pitch_cmd);
      stream.next(m.pose_cmd);
      stream.next(m.move_type_cmd);
      stream.next(m.gait_toggle_cmd);
      stream.next(m.leg_toggle_cmd);
      stream.next(m.stance_cmd);
      stream.next(m.reboot_cmd);
      stream.next(m.set_home_pose_cmd);
      stream.next(m.speed_cmd);
      stream.next(m.speed_toggle_cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HexJoy_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::interbotix_xs_msgs::HexJoy_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::interbotix_xs_msgs::HexJoy_<ContainerAllocator>& v)
  {
    s << indent << "world_x_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.world_x_cmd);
    s << indent << "world_y_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.world_y_cmd);
    s << indent << "world_yaw_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.world_yaw_cmd);
    s << indent << "place_x_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.place_x_cmd);
    s << indent << "place_y_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.place_y_cmd);
    s << indent << "place_z_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.place_z_cmd);
    s << indent << "place_roll_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.place_roll_cmd);
    s << indent << "place_pitch_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.place_pitch_cmd);
    s << indent << "pose_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.pose_cmd);
    s << indent << "move_type_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.move_type_cmd);
    s << indent << "gait_toggle_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.gait_toggle_cmd);
    s << indent << "leg_toggle_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.leg_toggle_cmd);
    s << indent << "stance_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.stance_cmd);
    s << indent << "reboot_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.reboot_cmd);
    s << indent << "set_home_pose_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.set_home_pose_cmd);
    s << indent << "speed_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.speed_cmd);
    s << indent << "speed_toggle_cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.speed_toggle_cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INTERBOTIX_XS_MSGS_MESSAGE_HEXJOY_H
