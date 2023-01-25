#! /usr/bin/env python3

import rospy
import moveit_commander
import sys
import moveit_msgs.msg
import geometry_msgs.msg
from dual_robot_msgs.srv import GraspWire, GraspWireResponse
from dual_robot_msgs.srv import GraspObject, GraspObjectResponse

from colorama import Fore
import copy
from scipy.spatial.transform import Rotation as R
import numpy as np




if __name__ == "__main__":

    rospy.init_node('robot_control_server')
    moveit_commander.roscpp_initialize(sys.argv)
    
    scene = moveit_commander.PlanningSceneInterface()
    robot = moveit_commander.RobotCommander()

    right_arm = moveit_commander.MoveGroupCommander("a_bot_arm")
    left_arm = moveit_commander.MoveGroupCommander("b_bot_arm")

    right_gripper = moveit_commander.MoveGroupCommander("a_bot_gripper")
    left_gripper = moveit_commander.MoveGroupCommander("b_bot_gripper")

    left_arm.set_named_target("sleep")
    right_arm.set_named_target("sleep")
    r_error_code_val, r_plan, r_planning_time, r_error_code = right_arm.plan()
    r_success = (r_error_code_val == moveit_msgs.msg.MoveItErrorCodes.SUCCESS)


    right_arm.execute(r_plan)

    l_error_code_val, l_plan, l_planning_time, l_error_code = left_arm.plan()
    l_success = (l_error_code_val == moveit_msgs.msg.MoveItErrorCodes.SUCCESS)

    if (r_success and l_success):
        
        left_arm.execute(l_plan)
    else:
        sys.exit()

    

    gripper_pose = geometry_msgs.msg.Pose()
    orientation = geometry_msgs.msg.Quaternion(0,0,0,1)
    gripper_pose.position.x = .19
    gripper_pose.position.y = -.17
    gripper_pose.position.z = .4
    gripper_pose.orientation = orientation
    
    right_arm.set_pose_target(gripper_pose)
    left_arm.set_pose_target(gripper_pose)

    r_error_code_val, r_plan, r_planning_time, r_error_code = right_arm.plan()
    r_success = (r_error_code_val == moveit_msgs.msg.MoveItErrorCodes.SUCCESS)
    l_error_code_val, l_plan, l_planning_time, l_error_code = left_arm.plan()
    l_success = (l_error_code_val == moveit_msgs.msg.MoveItErrorCodes.SUCCESS)

    if (r_success and l_success):
        right_arm.execute(r_plan)
        left_arm.execute(l_plan)
    else:
        sys.exit()

    # gripper_width = 0
    # pos = np.clip(0.51018 * gripper_width + 0.0134679, 0.021, 0.057)
    # joint_goal = right_gripper.get_current_joint_values()
    # joint_goal[0] = pos
    # joint_goal[1] = -pos

    # error_code_val, plan, planning_time, error_code = right_gripper.plan()
    # success = (error_code_val == moveit_msgs.msg.MoveItErrorCodes.SUCCESS)

    # if (success):
    #     right_gripper.execute(plan)
    # else:
    #     sys.exit()



    

    rospy.spin()
    moveit_commander.roscpp_shutdown()