; Auto-generated. Do not edit!


(cl:in-package dual_robot_msgs-srv)


;//! \htmlinclude GraspObject-request.msg.html

(cl:defclass <GraspObject-request> (roslisp-msg-protocol:ros-message)
  ((robot
    :reader robot
    :initarg :robot
    :type cl:string
    :initform "")
   (object_grasp_pose
    :reader object_grasp_pose
    :initarg :object_grasp_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass GraspObject-request (<GraspObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dual_robot_msgs-srv:<GraspObject-request> is deprecated: use dual_robot_msgs-srv:GraspObject-request instead.")))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <GraspObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dual_robot_msgs-srv:robot-val is deprecated.  Use dual_robot_msgs-srv:robot instead.")
  (robot m))

(cl:ensure-generic-function 'object_grasp_pose-val :lambda-list '(m))
(cl:defmethod object_grasp_pose-val ((m <GraspObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dual_robot_msgs-srv:object_grasp_pose-val is deprecated.  Use dual_robot_msgs-srv:object_grasp_pose instead.")
  (object_grasp_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspObject-request>) ostream)
  "Serializes a message object of type '<GraspObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_grasp_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspObject-request>) istream)
  "Deserializes a message object of type '<GraspObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_grasp_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspObject-request>)))
  "Returns string type for a service object of type '<GraspObject-request>"
  "dual_robot_msgs/GraspObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspObject-request)))
  "Returns string type for a service object of type 'GraspObject-request"
  "dual_robot_msgs/GraspObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspObject-request>)))
  "Returns md5sum for a message object of type '<GraspObject-request>"
  "12262fe8f8c7e2294f69e77ba46a1d34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspObject-request)))
  "Returns md5sum for a message object of type 'GraspObject-request"
  "12262fe8f8c7e2294f69e77ba46a1d34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspObject-request>)))
  "Returns full string definition for message of type '<GraspObject-request>"
  (cl:format cl:nil "string robot~%geometry_msgs/Pose object_grasp_pose ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspObject-request)))
  "Returns full string definition for message of type 'GraspObject-request"
  (cl:format cl:nil "string robot~%geometry_msgs/Pose object_grasp_pose ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_grasp_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspObject-request
    (cl:cons ':robot (robot msg))
    (cl:cons ':object_grasp_pose (object_grasp_pose msg))
))
;//! \htmlinclude GraspObject-response.msg.html

(cl:defclass <GraspObject-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GraspObject-response (<GraspObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dual_robot_msgs-srv:<GraspObject-response> is deprecated: use dual_robot_msgs-srv:GraspObject-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GraspObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dual_robot_msgs-srv:status-val is deprecated.  Use dual_robot_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspObject-response>) ostream)
  "Serializes a message object of type '<GraspObject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspObject-response>) istream)
  "Deserializes a message object of type '<GraspObject-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspObject-response>)))
  "Returns string type for a service object of type '<GraspObject-response>"
  "dual_robot_msgs/GraspObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspObject-response)))
  "Returns string type for a service object of type 'GraspObject-response"
  "dual_robot_msgs/GraspObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspObject-response>)))
  "Returns md5sum for a message object of type '<GraspObject-response>"
  "12262fe8f8c7e2294f69e77ba46a1d34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspObject-response)))
  "Returns md5sum for a message object of type 'GraspObject-response"
  "12262fe8f8c7e2294f69e77ba46a1d34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspObject-response>)))
  "Returns full string definition for message of type '<GraspObject-response>"
  (cl:format cl:nil "bool status ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspObject-response)))
  "Returns full string definition for message of type 'GraspObject-response"
  (cl:format cl:nil "bool status ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspObject-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspObject-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GraspObject)))
  'GraspObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GraspObject)))
  'GraspObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspObject)))
  "Returns string type for a service object of type '<GraspObject>"
  "dual_robot_msgs/GraspObject")