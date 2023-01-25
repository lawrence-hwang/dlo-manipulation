#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge,CvBridgeError
import cv2
import numpy as np 
import matplotlib.pyplot as plt

class RGBSegmentation(object):

    def __init__(self):
        # From Intel camera/, create subscribers to get raw image data and camera information
        self.aligned_depth_rgb_sub = rospy.Subscriber("/camera/aligned_depth_to_color/image_raw", Image, self.get_depth_data,queue_size=1)
        self.rgb_img_sub = rospy.Subscriber("/camera/color/image_raw",Image, self.rgb_callback,queue_size=1)
        self.depth_img_camera_info = rospy.Subscriber("/camera/aligned_depth_to_color/camera_info",CameraInfo, self.depth_cam_info_callback,queue_size=1)
        
        # Publishers of processed image data
        self.image_pub = rospy.Publisher("/rs_segmented_image", Image, queue_size=1)
        self.depth_image_pub = rospy.Publisher("/seg_depth/image_raw", Image, queue_size=1)
        self.depth_img_cam_info_pub = rospy.Publisher("/seg_depth/camera_info", CameraInfo, queue_size=1)

        self.bridge_object = CvBridge()
        self.depth_data = []
        self.depth_cam_info = CameraInfo()
        self.seg_depth_img = Image()

        # For wire RGB color definition; values for pink wire?
        self.upper_color = np.array([179, 255, 255])
        self.lower_color = np.array([124, 72, 47])

    def segment_rgb(self, lower_color : np.array, upper_color : np.array, cv_image, preview : bool = False):
        """
        Wire segmenting process by Coloe. Given NumPy arrays representing RGB values for an upper and lower color, and a cv_image from the Intel Realsense device, return a mask.

        Arguments:
            lower_color : numpy.array 
                Represent lower_color for wire segmentation in numpy.array RGB format
            upper_color : numpy.array
                Represent upper_color for wire segmentation in numpy.array RGB format
            cv_image : numpy.array
                Represent cv_image in numpy.array format
        Returns:
            bitwise_img : 
                New image produced from bitwise of cv_image and mask.
        """
        hsv = cv2.cvtColor(cv_image, cv2.COLOR_BGR2HSV)
        mask = cv2.inRange(hsv, lower_color, upper_color)
        
        if preview:
            self._image_preview(cv_image, hsv, mask)
        
        return cv2.bitwise_and(cv_image, cv_image, mask = mask)

    def _image_preview(self, cv_image : np.array, hsv : np.array, mask : np.array) -> None:
        """
        Helper method to preview segmented images
        """
        cv2.imshow('Sample image: cv_image',cv_image)
        cv2.imshow('Sample image: hsv',hsv)
        cv2.imshow('Sample image: mask',mask)
 
        # Exit preview windows and close
        cv2.waitKey(0) # waits until a key is pressed
        cv2.destroyAllWindows() # destroys the window showing image

    def calc_largest_contour(self, bitwise_img, kernel):
        """
        Dilation of bitwise image and calculation of greatest contour from that information.

        Arguments:
            bitwise_img :
                Previously calculated image of bitwise cv_image and mask.
            kernel : 
        Returns:
            Filtered wire representing greatest contour
        """
        # Dilation
        img_dilation = cv2.dilate(bitwise_img, kernel, iterations=1)
        img_dilation_gray = cv2.cvtColor(img_dilation,cv2.COLOR_BGR2GRAY)

        # Contour calculation
        contours, hierch = cv2.findContours(img_dilation_gray, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)
        largest_area = sorted(contours, key= cv2.contourArea)
        mask2 = np.zeros(img_dilation_gray.shape, np.uint8)

        rospy.loginfo(len(largest_area))
        return cv2.drawContours(mask2,[largest_area[-1]], 0, (255,255,255,255), -1)

    def define_camera(self, frame_id : str, height : int, width : int, distortion_model : str, binning_x : int = 0, binning_y : int = 0):
        """
        Defines parameters for camera, return CameraInfo object specifying camera details.
        
        Arguments:
            frame_id : str
                String specifying frame id.
            height : int
                Int representing height of camera resolution.
            width : int
                Int representing width of camera resolution.
            distortion_model : str
                String representing model of distortion used in camera.
            binning_x : int = 0
                Int representing binning x value, default 0.
            binning_y : int = 0
                Int representing bnning y value, default 0.
        Returns:
            cam_info : CameraInfo
                CameraInfo object detailing infromation about the camera.
        """
        cam_info = CameraInfo()
        cam_info.header.stamp = rospy.Time.now()
        cam_info.header.frame_id = frame_id # "camera_color_optical_frame"
        cam_info.height = height # 720
        cam_info.width = width # 1280
        cam_info.distortion_model = distortion_model # "plumb_bob"
        cam_info.D = self.depth_cam_info.D
        cam_info.K = self.depth_cam_info.K
        cam_info.R = self.depth_cam_info.R
        cam_info.P = self.depth_cam_info.P
        cam_info.binning_x = binning_x
        cam_info.binning_y = binning_y
        cam_info.roi = self.depth_cam_info.roi
        return cam_info

    def rgb_callback(self, data):
        try:
            cv_image = self.bridge_object.imgmsg_to_cv2(data, desired_encoding="bgr8")
        except CvBridgeError as e:
            print(e)
        rospy.sleep(0.01)

        # Segment RGB; by Coloe
        bitwise_img = self.segment_rgb(self.lower_color, self.upper_color, cv_image, False)

        # Dilation and calculating largest contour
        kernel = np.ones((5,5), np.uint8)
        filtered_wire = self.calc_largest_contour(bitwise_img, kernel)

        # Erosion of image
        img_erosion = cv2.erode(filtered_wire, kernel, iterations=2)

        # Get copy of depth image
        depth_copy = self.depth_data.copy()

        # Use segmented RGB image as mask for depth image
        new_depth_img = cv2.bitwise_and(depth_copy, depth_copy, mask = img_erosion )

        # Define Camera info for publish
        cam_info = self.define_camera("camera_color_optical_frame", 720, 1280, "plumb_bob")

        # Segmented RGB Image
        segmented_img = self.bridge_object.cv2_to_imgmsg(bitwise_img,"passthrough")
        segmented_img.header.frame_id = "camera_color_optical_frame"

        # Segmneted Depth Image
        self.seg_depth_img = self.bridge_object.cv2_to_imgmsg(new_depth_img)
        self.seg_depth_img.header.stamp = cam_info.header.stamp
        self.seg_depth_img.header.frame_id = "camera_color_optical_frame"
    
        # Publish segmented image, segmented depth image, and camera info.
        self.image_pub.publish(segmented_img)
        self.depth_image_pub.publish(self.seg_depth_img)
        self.depth_img_cam_info_pub.publish(cam_info)

    def get_depth_data(self,data):
        cv_depth_image = self.bridge_object.imgmsg_to_cv2(data)
        self.depth_data = cv_depth_image

    def depth_cam_info_callback( self,msg):
        self.depth_cam_info = msg

def main():
    rospy.init_node("seg_node",anonymous=True)
    rospy.sleep(3)
    seg_object = RGBSegmentation()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("shut down")
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main()
