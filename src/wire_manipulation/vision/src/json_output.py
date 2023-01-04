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

