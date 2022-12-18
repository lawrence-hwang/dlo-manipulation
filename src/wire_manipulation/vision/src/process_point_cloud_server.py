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



def sort_points(points : list, end_point) -> list:
    """
    Function to sort a collection of points, given an array of points and an end point.

    Arguments:
        points : list
            A list containing the set of raw points.
        end_point : 
            An individual point representing the end of the wire.
    Returns:
        sorted_points : list
            A list containing the set of points sorted.
    """
    elements = [end_point]
    sorted_points = np.zeros((len(points), 3))
    sorted_points[0,:] = points[int(end_point),:]

    for i in range(len(points) - 1):
        min_dist = 5
        for j in range(len(points)):
            compare_flag = True
            for e in elements:
                if j == e:
                    compare_flag = False
            if compare_flag:
                dist = ((points[j,0] - sorted_points[i,0])**2 + (points[j,1] - sorted_points[i,1])**2 + (points[j,2] - sorted_points[i,2])**2 )**0.5
                if dist < min_dist:
                    min_dist = dist
                    element = j
        sorted_points[i+1,:] = points[element,:]
        elements.append(element)
    return sorted_points

def process_bezier_curve(sorted_points : list, node_count : int) -> list:
    """
    Function to return the final set of nodes based on the wire image and its Bezier curve.

    Arguments:
        sorted_points : list
            list of sorted points from above method.
        node_count : int
            Integer representing the total number of nodes.
    Returns:
        final_node_list : list
            list containing processed set of nodes.
    """
    wire = WireGraspToolbox(sorted_points)
    curve_set = wire.BCurve()
    final_node_set = np.zeros((node_count,3))

    for i in range(node_count):
        final_node_set[[i],:] = curve_set[[i*5],:]

    return final_node_set 

def get_wire_length(points : list) -> int:
    """
    Calculates the total length of the wire given a set of points.

    Arguments:
        points : list
            list of points used in calculating the total length of wire.
    Returns:
        length : int
            An integer representing the total length of the wire.
    """
    length = 0
    for i in range(len(points)-1):
        length = length + ((points[i,0] - points[i+1,0])**2 + (points[i,1] - points[i+1,1])**2 + (points[i,2] - points[i+1,2])**2 )**0.5

    return length

def process_clusters(pc, count : int, node_count : int) -> list:
    # format the processed pointcloud into a N x 3 numpy array
    """
    Formats the processed pointcloud into a N x 3 Numpy array, and extract only non-zero elements.
    Use the processed array to return the point cloud data clusered around the node count.

    Arguments:
        pc :
            Pointcloud
        count : int
            Count of transformations
        node_count : int
            Count of how many nodes to cluster.
    Returns:
        kmeans.cluster_centers_ : 
            Clustered point cloud
    """
    points = np.zeros((len(pc)*len(pc[0]),3))
    for x in range(len(pc)):
        for y in range(len(pc[0])):
            points_processed = pc[x,y]
            if not math.isnan(points_processed[1]):
                # Transform the points into the world frame
                points[count] = [points_processed[0],points_processed[1],points_processed[2]] + np.array([0, 0, 0])  
                count = count + 1

    # Cluster the point cloud data into node_count nodes
    kmeans = KMeans(n_clusters=node_count)
    kmeans.fit(points[0:(count-1), :])
    return kmeans.cluster_centers_

def process_outliers(C, node_count : int):
    """
    Function to find and remove outliers from the clustered point cloud.

    Arguments:
        C : 
        node_count : int
            Count of how many nodes to cluster.
    Returns:
        new_points : 
            List of points with outliers removed. 
    """
    # Compile list of outliers based on condition min_dist
    outliers = []
    threshold = 0.05 # A point whos closest neighbor is greater than 0.1m away is considered an outlier 
    for k in range(node_count):
        min_dist = 5
        for j in range(node_count):
            if k != j:
                dist = ((C[k,0] - C[j,0])**2 + (C[k,1] - C[j,1])**2 + (C[k,2] - C[j,2])**2 )**0.5
                if dist < min_dist:
                    min_dist = dist
        # Check outlier condition    
        if min_dist > threshold: 
            outliers.append(k)
    # Remove outliers and return filtered clustered pointcloud
    size_of_outliers = len(outliers)
    # print('# of Outliers',size_of_outliers)
    new_points = np.zeros((node_count-size_of_outliers,3))
    j = 0
    for i in range(node_count):
        remove = False
        for k in range(size_of_outliers):
            if i == outliers[k]:
                remove = True
        if not remove:
            new_points[[j],:] = C[[i],:]
            j = j +1
    return new_points

def transpose_camera_points(points : list) -> list:
    """
    TO DO: Automate this with tf2; currently transform the points from camera_color_optical_frame to camera_frame 
    with rotation about x -90, rotation about y 90. 
    Transformation from camera frame to world is pure translation -0.2286 0 0.4318
    
    Arguments:
        points : list
            List of processed points.
    Returns:
        list of transposed points.
    """
    result_points = points
    angle = math.pi/2
    ROT = rotm(-angle,angle,0)

    for i in range(len(result_points)):
        result_points[[i],:] = np.transpose(ROT@np.transpose(result_points[[i],:])) + np.array((-0.3556,0.015,0.4064))
    return result_points

def process_extrema_points(new_points : list):
    """
    Check the extreme points ( max min x,y,z) and find the element with the most extreme values.
    ex. element 6 might hold the max x and min z. Likely an end point; use this point as a starting point
    
    Arguments:
        new_points : list
            List of processed, clustered and transposed points.
    Returns:
        end_point :
            Determined wire endpoint.
        wire_class : str
            Determined type of the wire, either type1 being vertical or type2 being horizontal.
    """
    min_y = max_y = new_points[0,1]
    min_z = max_z = new_points[0,2]
    extrema_elements = np.zeros(4) # [min_y, max_y, min_z, max_z]

    for j in range(len(new_points)):
        if new_points[j,1] <= min_y:
            min_y = new_points[j,1]
            extrema_elements[0] = int(j)
        if new_points[j,1] >= max_y:
            max_y = new_points[j,1]
            extrema_elements[1] = int(j)
        if new_points[j,2] <= min_z:
            min_z = new_points[j,2]
            extrema_elements[2] = int(j)
        if new_points[j,2] >= max_z:
            max_z = new_points[j,2]
            extrema_elements[3] = int(j)

    distance_between_y_extrema = np.abs(max_y - min_y)
    distance_between_z_extrema = np.abs(max_z - min_z)

    if distance_between_z_extrema > distance_between_y_extrema:
        end_point = int(extrema_elements[2])
        print("end point is in Z", new_points[end_point])
        wire_class = "type1" # wire is mostly vertical
    else:
        end_point = int(extrema_elements[0])
        print("end point is in Y", new_points[end_point])
        wire_class = "type2" # wire is mostly horizontal 
    return end_point, wire_class

def process_sorted_points(node_count : int, sorted_points : list, final_node_set : list):
    """
    Process lists of sorted points and list of final set of nodes to obtain array for poses, markers, and raw points.

    Arguments:
        node_count : int
            Integer representing number of nodes.
        sorted_points : list
            List of sorted points.
        final_node_set : list
            List of final nodes post filtering.
    Returns:
        pose_array : PoseArray
            Array representing position of wire.
        markers : MarkerArray
            Array representing markers of wire.
        raw_points : PoseArray
            Array representing the raw points of the array.
    """
    pose_array = PoseArray()
    markers = MarkerArray()
    raw_points = PoseArray()

    for j in range(len(sorted_points)):
        pose = Pose()
        pose.position.x = sorted_points[j,0]
        pose.position.y = sorted_points[j,1]
        pose.position.z = sorted_points[j,2]
        pose.orientation.w = 1.0

        raw_points.poses.append(pose)


    for i in range(node_count):
        pose = Pose()
        pose.position.x = final_node_set[i,0]
        pose.position.y = final_node_set[i,1]
        pose.position.z = final_node_set[i,2]
        pose.orientation.w = 1.0

        pose_array.poses.append(pose)  

        # Visualization 
        marker_object = Marker()
        marker_object.header.frame_id = 'world'
        marker_object.header.stamp = rospy.get_rostime()
        marker_object.ns = 'point'
        marker_object.id = i
        marker_object.type = Marker.SPHERE
        marker_object.action = Marker.ADD

        
        marker_object.pose.position = pose.position
        marker_object.pose.orientation = pose.orientation

        marker_object.scale.x = 0.025
        marker_object.scale.y = 0.025
        marker_object.scale.z = 0.025

        if i == 0:
            marker_object.color.r = 0.0
            marker_object.color.g = 1.0
            marker_object.color.b = 0.0
        else:
            marker_object.color.r = 1.0
            marker_object.color.g = 0.0
            marker_object.color.b = 0.0

        marker_object.color.a = 1.0
        marker_object.lifetime = rospy.Duration(0)

        markers.markers.append(marker_object)

    return pose_array, markers, raw_points

def process_point_cloud(req):
    # Convert pointcloud into cluster of #node_count nodes
    node_count = 20
    clusters = process_clusters(ros_numpy.numpify(req.pointcloud), 0, node_count)

    # Find and remove outliers. Transpose for camera frame.
    new_points = transpose_camera_points(process_outliers(clusters, node_count))

    # Find extrema points and use to determine the type of wire and endpoint.
    end_point, wire_class = process_extrema_points(new_points)

    # Sort the points 
    sorted_points = sort_points(new_points,end_point)

    # Fit the Bezier curve 
    final_node_set = process_bezier_curve(sorted_points,20)

    # Final processing before publishing. Create poses, raw points, and markers.
    pose_array, markers, raw_points = process_sorted_points(node_count, sorted_points, final_node_set)

    # Publish to other components, return a ProcessPointCloudResponse object with pose, wire_length, raw_points, and wire_class
    marker_.publish(markers)
    wire_length = get_wire_length(final_node_set)

    return ProcessPointCloudResponse(pose = pose_array, wire_length = wire_length, raw_points = raw_points, wire_class = wire_class)    
 
if __name__ == "__main__":
    rospy.init_node('process_point_cloud_server')
    marker_ = rospy.Publisher('/marker_array', MarkerArray, queue_size=1) # define a publisher marker_array
    s = rospy.Service('process_point_cloud', ProcessPointCloud, process_point_cloud)
    print("Process PointCloud Server is now running")
    rospy.spin()