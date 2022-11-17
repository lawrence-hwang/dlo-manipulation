#!/usr/bin/env python3
import rospy
import sys
from sensor_msgs.msg import JointState

def create_joint_remapper(prefix):
    joint_names = [
        "waist",
        "shoulder",
        "elbow",
        "forearm_roll",
        "wrist_angle",
        "wrist_rotate",
        "gripper",
        "left_finger",
        "right_finger",
    ]
    prefix_joint_names = [prefix + name for name in joint_names]
    joint_states_pub = rospy.Publisher("/joint_states", JointState, queue_size=1)
    
    def remap_joint_states(msg):
        msg.name = prefix_joint_names
        joint_states_pub.publish(msg)

    rospy.Subscriber(f"/{prefix}/joint_states", JointState, remap_joint_states)

if __name__ == '__main__':
    rospy.init_node('joint_state_remapper', anonymous=True)
    for i in range(1,len(sys.argv)-2):
        create_joint_remapper(sys.argv[i])
    rospy.spin()