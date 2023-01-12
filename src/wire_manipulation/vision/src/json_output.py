#!/usr/bin/env python3

import json
from datetime import datetime

class JSONOutput:
    def __init__(self, obj):
        self.obj_to_format = obj
        self.json_result = None

        # Create subscribers here for what to export? Talk to Christopher

    def convert_json_format(self, obj):
        conv_obj = obj
        # Perform obj conversion to JSON acceptable form here

        
        self.json_result = conv_obj
        # Return formatted obj
        return self.json_result

    def export_json(self):
        datetime_str = (datetime.now()).strftime("%d-%m-%Y_%H-%M-%S")
        formatted_filename = "arm-trajectories_" + datetime_str + ".json"
        with open(formatted_filename, "w") as outfile:
            json.dump(self.json_result, outfile)

# if __name__ == "__main__":
    # rospy.init_node('process_point_cloud_server')
    # marker_ = rospy.Publisher('/marker_array', MarkerArray, queue_size=1) # define a publisher marker_array
    # s = rospy.Service('process_point_cloud', ProcessPointCloud, process_point_cloud)
    # print("Exporting JSON of planned trajectory")
    # rospy.spin()
    # pass
