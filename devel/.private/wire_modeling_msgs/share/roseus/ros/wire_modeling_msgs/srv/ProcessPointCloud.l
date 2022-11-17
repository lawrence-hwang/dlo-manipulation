;; Auto-generated. Do not edit!


(when (boundp 'wire_modeling_msgs::ProcessPointCloud)
  (if (not (find-package "WIRE_MODELING_MSGS"))
    (make-package "WIRE_MODELING_MSGS"))
  (shadow 'ProcessPointCloud (find-package "WIRE_MODELING_MSGS")))
(unless (find-package "WIRE_MODELING_MSGS::PROCESSPOINTCLOUD")
  (make-package "WIRE_MODELING_MSGS::PROCESSPOINTCLOUD"))
(unless (find-package "WIRE_MODELING_MSGS::PROCESSPOINTCLOUDREQUEST")
  (make-package "WIRE_MODELING_MSGS::PROCESSPOINTCLOUDREQUEST"))
(unless (find-package "WIRE_MODELING_MSGS::PROCESSPOINTCLOUDRESPONSE")
  (make-package "WIRE_MODELING_MSGS::PROCESSPOINTCLOUDRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass wire_modeling_msgs::ProcessPointCloudRequest
  :super ros::object
  :slots (_pointcloud ))

(defmethod wire_modeling_msgs::ProcessPointCloudRequest
  (:init
   (&key
    ((:pointcloud __pointcloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _pointcloud __pointcloud)
   self)
  (:pointcloud
   (&rest __pointcloud)
   (if (keywordp (car __pointcloud))
       (send* _pointcloud __pointcloud)
     (progn
       (if __pointcloud (setq _pointcloud (car __pointcloud)))
       _pointcloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _pointcloud
    (send _pointcloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _pointcloud
       (send _pointcloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _pointcloud
     (send _pointcloud :deserialize buf ptr-) (incf ptr- (send _pointcloud :serialization-length))
   ;;
   self)
  )

(defclass wire_modeling_msgs::ProcessPointCloudResponse
  :super ros::object
  :slots (_pose _wire_length _raw_points _wire_class ))

(defmethod wire_modeling_msgs::ProcessPointCloudResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseArray :init))
    ((:wire_length __wire_length) 0.0)
    ((:raw_points __raw_points) (instance geometry_msgs::PoseArray :init))
    ((:wire_class __wire_class) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _wire_length (float __wire_length))
   (setq _raw_points __raw_points)
   (setq _wire_class (string __wire_class))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:wire_length
   (&optional __wire_length)
   (if __wire_length (setq _wire_length __wire_length)) _wire_length)
  (:raw_points
   (&rest __raw_points)
   (if (keywordp (car __raw_points))
       (send* _raw_points __raw_points)
     (progn
       (if __raw_points (setq _raw_points (car __raw_points)))
       _raw_points)))
  (:wire_class
   (&optional __wire_class)
   (if __wire_class (setq _wire_class __wire_class)) _wire_class)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _pose
    (send _pose :serialization-length)
    ;; float64 _wire_length
    8
    ;; geometry_msgs/PoseArray _raw_points
    (send _raw_points :serialization-length)
    ;; string _wire_class
    4 (length _wire_class)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _pose
       (send _pose :serialize s)
     ;; float64 _wire_length
       (sys::poke _wire_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/PoseArray _raw_points
       (send _raw_points :serialize s)
     ;; string _wire_class
       (write-long (length _wire_class) s) (princ _wire_class s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _wire_length
     (setq _wire_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/PoseArray _raw_points
     (send _raw_points :deserialize buf ptr-) (incf ptr- (send _raw_points :serialization-length))
   ;; string _wire_class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wire_class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass wire_modeling_msgs::ProcessPointCloud
  :super ros::object
  :slots ())

(setf (get wire_modeling_msgs::ProcessPointCloud :md5sum-) "a037fc9cae4c4c70c78fcfe3985c54fd")
(setf (get wire_modeling_msgs::ProcessPointCloud :datatype-) "wire_modeling_msgs/ProcessPointCloud")
(setf (get wire_modeling_msgs::ProcessPointCloud :request) wire_modeling_msgs::ProcessPointCloudRequest)
(setf (get wire_modeling_msgs::ProcessPointCloud :response) wire_modeling_msgs::ProcessPointCloudResponse)

(defmethod wire_modeling_msgs::ProcessPointCloudRequest
  (:response () (instance wire_modeling_msgs::ProcessPointCloudResponse :init)))

(setf (get wire_modeling_msgs::ProcessPointCloudRequest :md5sum-) "a037fc9cae4c4c70c78fcfe3985c54fd")
(setf (get wire_modeling_msgs::ProcessPointCloudRequest :datatype-) "wire_modeling_msgs/ProcessPointCloudRequest")
(setf (get wire_modeling_msgs::ProcessPointCloudRequest :definition-)
      "sensor_msgs/PointCloud2 pointcloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
geometry_msgs/PoseArray pose 
float64 wire_length
geometry_msgs/PoseArray raw_points
string wire_class

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get wire_modeling_msgs::ProcessPointCloudResponse :md5sum-) "a037fc9cae4c4c70c78fcfe3985c54fd")
(setf (get wire_modeling_msgs::ProcessPointCloudResponse :datatype-) "wire_modeling_msgs/ProcessPointCloudResponse")
(setf (get wire_modeling_msgs::ProcessPointCloudResponse :definition-)
      "sensor_msgs/PointCloud2 pointcloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
geometry_msgs/PoseArray pose 
float64 wire_length
geometry_msgs/PoseArray raw_points
string wire_class

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :wire_modeling_msgs/ProcessPointCloud "a037fc9cae4c4c70c78fcfe3985c54fd")


