#!/usr/bin/env python3
import rospy
import ros_numpy
import numpy as np
from numpy import linalg as la
import math

from geometry_msgs.msg import PoseArray
from geometry_msgs.msg import Pose
from visualization_msgs.msg import Marker
from visualization_msgs.msg import MarkerArray

from sklearn.cluster import KMeans
from wire_modeling.wire_sim import *
from wire_modeling.wire_grasp_toolbox import WireGraspToolbox, rotm
from wire_modeling_msgs.srv import ProcessPointCloud, ProcessPointCloudResponse

class JSONOutput():
    def __init__(self):
        pass
        # Create subscribers here for what to export? Talk to Christopher

if __name__ == "__main__":
    # rospy.init_node('process_point_cloud_server')
    # marker_ = rospy.Publisher('/marker_array', MarkerArray, queue_size=1) # define a publisher marker_array
    # s = rospy.Service('process_point_cloud', ProcessPointCloud, process_point_cloud)
    print("Exporting JSON of planned trajectory")
    rospy.spin()
