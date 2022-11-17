; Auto-generated. Do not edit!


(cl:in-package wire_modeling_msgs-srv)


;//! \htmlinclude ProcessPointCloud-request.msg.html

(cl:defclass <ProcessPointCloud-request> (roslisp-msg-protocol:ros-message)
  ((pointcloud
    :reader pointcloud
    :initarg :pointcloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass ProcessPointCloud-request (<ProcessPointCloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessPointCloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessPointCloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wire_modeling_msgs-srv:<ProcessPointCloud-request> is deprecated: use wire_modeling_msgs-srv:ProcessPointCloud-request instead.")))

(cl:ensure-generic-function 'pointcloud-val :lambda-list '(m))
(cl:defmethod pointcloud-val ((m <ProcessPointCloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wire_modeling_msgs-srv:pointcloud-val is deprecated.  Use wire_modeling_msgs-srv:pointcloud instead.")
  (pointcloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessPointCloud-request>) ostream)
  "Serializes a message object of type '<ProcessPointCloud-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointcloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessPointCloud-request>) istream)
  "Deserializes a message object of type '<ProcessPointCloud-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointcloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessPointCloud-request>)))
  "Returns string type for a service object of type '<ProcessPointCloud-request>"
  "wire_modeling_msgs/ProcessPointCloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessPointCloud-request)))
  "Returns string type for a service object of type 'ProcessPointCloud-request"
  "wire_modeling_msgs/ProcessPointCloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessPointCloud-request>)))
  "Returns md5sum for a message object of type '<ProcessPointCloud-request>"
  "a037fc9cae4c4c70c78fcfe3985c54fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessPointCloud-request)))
  "Returns md5sum for a message object of type 'ProcessPointCloud-request"
  "a037fc9cae4c4c70c78fcfe3985c54fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessPointCloud-request>)))
  "Returns full string definition for message of type '<ProcessPointCloud-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pointcloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessPointCloud-request)))
  "Returns full string definition for message of type 'ProcessPointCloud-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pointcloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessPointCloud-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointcloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessPointCloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessPointCloud-request
    (cl:cons ':pointcloud (pointcloud msg))
))
;//! \htmlinclude ProcessPointCloud-response.msg.html

(cl:defclass <ProcessPointCloud-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (wire_length
    :reader wire_length
    :initarg :wire_length
    :type cl:float
    :initform 0.0)
   (raw_points
    :reader raw_points
    :initarg :raw_points
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (wire_class
    :reader wire_class
    :initarg :wire_class
    :type cl:string
    :initform ""))
)

(cl:defclass ProcessPointCloud-response (<ProcessPointCloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessPointCloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessPointCloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wire_modeling_msgs-srv:<ProcessPointCloud-response> is deprecated: use wire_modeling_msgs-srv:ProcessPointCloud-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ProcessPointCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wire_modeling_msgs-srv:pose-val is deprecated.  Use wire_modeling_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'wire_length-val :lambda-list '(m))
(cl:defmethod wire_length-val ((m <ProcessPointCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wire_modeling_msgs-srv:wire_length-val is deprecated.  Use wire_modeling_msgs-srv:wire_length instead.")
  (wire_length m))

(cl:ensure-generic-function 'raw_points-val :lambda-list '(m))
(cl:defmethod raw_points-val ((m <ProcessPointCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wire_modeling_msgs-srv:raw_points-val is deprecated.  Use wire_modeling_msgs-srv:raw_points instead.")
  (raw_points m))

(cl:ensure-generic-function 'wire_class-val :lambda-list '(m))
(cl:defmethod wire_class-val ((m <ProcessPointCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wire_modeling_msgs-srv:wire_class-val is deprecated.  Use wire_modeling_msgs-srv:wire_class instead.")
  (wire_class m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessPointCloud-response>) ostream)
  "Serializes a message object of type '<ProcessPointCloud-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wire_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'raw_points) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wire_class))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wire_class))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessPointCloud-response>) istream)
  "Deserializes a message object of type '<ProcessPointCloud-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wire_length) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'raw_points) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wire_class) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wire_class) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessPointCloud-response>)))
  "Returns string type for a service object of type '<ProcessPointCloud-response>"
  "wire_modeling_msgs/ProcessPointCloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessPointCloud-response)))
  "Returns string type for a service object of type 'ProcessPointCloud-response"
  "wire_modeling_msgs/ProcessPointCloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessPointCloud-response>)))
  "Returns md5sum for a message object of type '<ProcessPointCloud-response>"
  "a037fc9cae4c4c70c78fcfe3985c54fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessPointCloud-response)))
  "Returns md5sum for a message object of type 'ProcessPointCloud-response"
  "a037fc9cae4c4c70c78fcfe3985c54fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessPointCloud-response>)))
  "Returns full string definition for message of type '<ProcessPointCloud-response>"
  (cl:format cl:nil "geometry_msgs/PoseArray pose ~%float64 wire_length~%geometry_msgs/PoseArray raw_points~%string wire_class~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessPointCloud-response)))
  "Returns full string definition for message of type 'ProcessPointCloud-response"
  (cl:format cl:nil "geometry_msgs/PoseArray pose ~%float64 wire_length~%geometry_msgs/PoseArray raw_points~%string wire_class~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessPointCloud-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'raw_points))
     4 (cl:length (cl:slot-value msg 'wire_class))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessPointCloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessPointCloud-response
    (cl:cons ':pose (pose msg))
    (cl:cons ':wire_length (wire_length msg))
    (cl:cons ':raw_points (raw_points msg))
    (cl:cons ':wire_class (wire_class msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ProcessPointCloud)))
  'ProcessPointCloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ProcessPointCloud)))
  'ProcessPointCloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessPointCloud)))
  "Returns string type for a service object of type '<ProcessPointCloud>"
  "wire_modeling_msgs/ProcessPointCloud")