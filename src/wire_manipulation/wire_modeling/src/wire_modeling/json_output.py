#!/usr/bin/env python3

import rospy
# from sensor_msgs.msg import Image, CameraInfo
# from cv_bridge import CvBridge,CvBridgeError
# import cv2
# import numpy as np 
# import matplotlib.pyplot as plt
import json
from datetime import datetime
from std_msgs.msg import String

class JSONOutput:
    def __init__(self):
        self.json_dict = []

        # Create subscribers to gather data for export
        self.a_bot_status_sub = rospy.Subscriber("/a_bot_/arm_controller/state", String, self.data_callback)
        self.b_bot_status_sub = rospy.Subscriber("/b_bot_/arm_controller/state", String, self.data_callback)

    def data_callback(data):
        # rospy.loginfo(data.data)
        print(data.data)

    def id_in_json(self, id) -> int:
        # Return index of matching id in list of dictionaries
        for d_i in range(len(self.json_dict)):
            if id in self.json_dict[d_i].keys():
                return d_i
        return -1

    def add_waypoint(self, id, wire_grasp_pose, time):
        # Perform obj conversion to JSON acceptable form here
        id_index = self.id_in_json(id)
        if id_index < 0: # id is not in obj, add a new id to going list of dict to export
            self.json_dict.append({
                "_id": str(id),
                "waypoints":[]
            })
            id_index = len(self.json_dict)-1
        
        new_waypoint = dict()
        split_time = str(time).split(".")
        new_waypoint["timestamp"] = {
            "nsec": int(split_time[1]) * 1e+9,
            "sec": int(split_time[0])
        }
        new_waypoint["smoothness"] = 0 # 0 for now, no smoothness value
        new_waypoint["pose"] = {
            "position": {
                "x": wire_grasp_pose.position.x,
                "y": wire_grasp_pose.position.y,
                "z": wire_grasp_pose.position.z
            },
            "orientation": {
                "x": wire_grasp_pose.orientation.x,
                "y": wire_grasp_pose.orientation.y,
                "z": wire_grasp_pose.orientation.z,
                "w":  wire_grasp_pose.orientation.w
            }
        }

        self.json_dict[id_index]["waypoints"].append(new_waypoint)
        print("JSON_DICT: ", self.json_dict)
        # return self.json_result

    def export_json(self):
        datetime_str = (datetime.now()).strftime("%d-%m-%Y_%H-%M-%S")
        formatted_filename = "arm-trajectories_" + datetime_str + ".json"
        # file_format = json.dumps(self.json_dict)
        with open(formatted_filename, "w") as outfile:
            json.dump(self.json_dict, outfile, indent=4)

            # NEXT STEPS: SIMPLIFY EXECTUOR.PY TO MOVE SINGLE ARM, TRY JSON EXPORTING CORRECT TRAJECTORY

# NODE FOR DOCUMENTING CURRENT POSITION OF ARMS
if __name__ == "__main__":
    rospy.init_node('process_json_output')

    json_exporter = JSONOutput()

    print("Exporting JSON of planned trajectory")
    rospy.spin()
