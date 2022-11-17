; Auto-generated. Do not edit!


(cl:in-package dual_robot_msgs-srv)


;//! \htmlinclude GraspWire-request.msg.html

(cl:defclass <GraspWire-request> (roslisp-msg-protocol:ros-message)
  ((robot
    :reader robot
    :initarg :robot
    :type cl:string
    :initform "")
   (wire_grasp_pose
    :reader wire_grasp_pose
    :initarg :wire_grasp_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pull_vec
    :reader pull_vec
    :initarg :pull_vec
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass GraspWire-request (<GraspWire-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspWire-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspWire-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dual_robot_msgs-srv:<GraspWire-request> is deprecated: use dual_robot_msgs-srv:GraspWire-request instead.")))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <GraspWire-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dual_robot_msgs-srv:robot-val is deprecated.  Use dual_robot_msgs-srv:robot instead.")
  (robot m))

(cl:ensure-generic-function 'wire_grasp_pose-val :lambda-list '(m))
(cl:defmethod wire_grasp_pose-val ((m <GraspWire-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dual_robot_msgs-srv:wire_grasp_pose-val is deprecated.  Use dual_robot_msgs-srv:wire_grasp_pose instead.")
  (wire_grasp_pose m))

(cl:ensure-generic-function 'pull_vec-val :lambda-list '(m))
(cl:defmethod pull_vec-val ((m <GraspWire-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dual_robot_msgs-srv:pull_vec-val is deprecated.  Use dual_robot_msgs-srv:pull_vec instead.")
  (pull_vec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspWire-request>) ostream)
  "Serializes a message object of type '<GraspWire-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wire_grasp_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pull_vec) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspWire-request>) istream)
  "Deserializes a message object of type '<GraspWire-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wire_grasp_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pull_vec) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspWire-request>)))
  "Returns string type for a service object of type '<GraspWire-request>"
  "dual_robot_msgs/GraspWireRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspWire-request)))
  "Returns string type for a service object of type 'GraspWire-request"
  "dual_robot_msgs/GraspWireRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspWire-request>)))
  "Returns md5sum for a message object of type '<GraspWire-request>"
  "e606f67dd60a8cc1664155100285b04a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspWire-request)))
  "Returns md5sum for a message object of type 'GraspWire-request"
  "e606f67dd60a8cc1664155100285b04a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspWire-request>)))
  "Returns full string definition for message of type '<GraspWire-request>"
  (cl:format cl:nil "string robot~%geometry_msgs/Pose wire_grasp_pose ~%geometry_msgs/Vector3 pull_vec~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspWire-request)))
  "Returns full string definition for message of type 'GraspWire-request"
  (cl:format cl:nil "string robot~%geometry_msgs/Pose wire_grasp_pose ~%geometry_msgs/Vector3 pull_vec~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspWire-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wire_grasp_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pull_vec))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspWire-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspWire-request
    (cl:cons ':robot (robot msg))
    (cl:cons ':wire_grasp_pose (wire_grasp_pose msg))
    (cl:cons ':pull_vec (pull_vec msg))
))
;//! \htmlinclude GraspWire-response.msg.html

(cl:defclass <GraspWire-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GraspWire-response (<GraspWire-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspWire-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspWire-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dual_robot_msgs-srv:<GraspWire-response> is deprecated: use dual_robot_msgs-srv:GraspWire-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GraspWire-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dual_robot_msgs-srv:status-val is deprecated.  Use dual_robot_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspWire-response>) ostream)
  "Serializes a message object of type '<GraspWire-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspWire-response>) istream)
  "Deserializes a message object of type '<GraspWire-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspWire-response>)))
  "Returns string type for a service object of type '<GraspWire-response>"
  "dual_robot_msgs/GraspWireResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspWire-response)))
  "Returns string type for a service object of type 'GraspWire-response"
  "dual_robot_msgs/GraspWireResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspWire-response>)))
  "Returns md5sum for a message object of type '<GraspWire-response>"
  "e606f67dd60a8cc1664155100285b04a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspWire-response)))
  "Returns md5sum for a message object of type 'GraspWire-response"
  "e606f67dd60a8cc1664155100285b04a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspWire-response>)))
  "Returns full string definition for message of type '<GraspWire-response>"
  (cl:format cl:nil "bool status ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspWire-response)))
  "Returns full string definition for message of type 'GraspWire-response"
  (cl:format cl:nil "bool status ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspWire-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspWire-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspWire-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GraspWire)))
  'GraspWire-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GraspWire)))
  'GraspWire-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspWire)))
  "Returns string type for a service object of type '<GraspWire>"
  "dual_robot_msgs/GraspWire")