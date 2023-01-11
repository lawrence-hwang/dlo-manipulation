#!/usr/bin/env python3
# import rospy
# import ros_numpy
import numpy as np
from numpy import linalg as la
import math, json

# from geometry_msgs.msg import PoseArray
# from geometry_msgs.msg import Pose
# from visualization_msgs.msg import Marker
# from visualization_msgs.msg import MarkerArray

# from sklearn.cluster import KMeans
# from wire_modeling.wire_sim import *
# from wire_modeling.wire_grasp_toolbox import WireGraspToolbox, rotm
# from wire_modeling_msgs.srv import ProcessPointCloud, ProcessPointCloudResponse

class JSONOutput():
    def __init__(self):
        pass
        # Create subscribers here for what to export? Talk to Christopher

    def get_dict(self, obj):
        pass
        # take information and convert it to a dict or other JSON acceptable form here

    def get_json(self, dict):
        return json.dump(dict)

if __name__ == "__main__":
    # rospy.init_node('process_point_cloud_server')
    # marker_ = rospy.Publisher('/marker_array', MarkerArray, queue_size=1) # define a publisher marker_array
    # s = rospy.Service('process_point_cloud', ProcessPointCloud, process_point_cloud)
    # print("Exporting JSON of planned trajectory")
    # rospy.spin()
    pass
