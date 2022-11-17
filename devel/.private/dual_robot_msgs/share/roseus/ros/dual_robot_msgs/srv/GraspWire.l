;; Auto-generated. Do not edit!


(when (boundp 'dual_robot_msgs::GraspWire)
  (if (not (find-package "DUAL_ROBOT_MSGS"))
    (make-package "DUAL_ROBOT_MSGS"))
  (shadow 'GraspWire (find-package "DUAL_ROBOT_MSGS")))
(unless (find-package "DUAL_ROBOT_MSGS::GRASPWIRE")
  (make-package "DUAL_ROBOT_MSGS::GRASPWIRE"))
(unless (find-package "DUAL_ROBOT_MSGS::GRASPWIREREQUEST")
  (make-package "DUAL_ROBOT_MSGS::GRASPWIREREQUEST"))
(unless (find-package "DUAL_ROBOT_MSGS::GRASPWIRERESPONSE")
  (make-package "DUAL_ROBOT_MSGS::GRASPWIRERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass dual_robot_msgs::GraspWireRequest
  :super ros::object
  :slots (_robot _wire_grasp_pose _pull_vec ))

(defmethod dual_robot_msgs::GraspWireRequest
  (:init
   (&key
    ((:robot __robot) "")
    ((:wire_grasp_pose __wire_grasp_pose) (instance geometry_msgs::Pose :init))
    ((:pull_vec __pull_vec) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _robot (string __robot))
   (setq _wire_grasp_pose __wire_grasp_pose)
   (setq _pull_vec __pull_vec)
   self)
  (:robot
   (&optional __robot)
   (if __robot (setq _robot __robot)) _robot)
  (:wire_grasp_pose
   (&rest __wire_grasp_pose)
   (if (keywordp (car __wire_grasp_pose))
       (send* _wire_grasp_pose __wire_grasp_pose)
     (progn
       (if __wire_grasp_pose (setq _wire_grasp_pose (car __wire_grasp_pose)))
       _wire_grasp_pose)))
  (:pull_vec
   (&rest __pull_vec)
   (if (keywordp (car __pull_vec))
       (send* _pull_vec __pull_vec)
     (progn
       (if __pull_vec (setq _pull_vec (car __pull_vec)))
       _pull_vec)))
  (:serialization-length
   ()
   (+
    ;; string _robot
    4 (length _robot)
    ;; geometry_msgs/Pose _wire_grasp_pose
    (send _wire_grasp_pose :serialization-length)
    ;; geometry_msgs/Vector3 _pull_vec
    (send _pull_vec :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot
       (write-long (length _robot) s) (princ _robot s)
     ;; geometry_msgs/Pose _wire_grasp_pose
       (send _wire_grasp_pose :serialize s)
     ;; geometry_msgs/Vector3 _pull_vec
       (send _pull_vec :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _wire_grasp_pose
     (send _wire_grasp_pose :deserialize buf ptr-) (incf ptr- (send _wire_grasp_pose :serialization-length))
   ;; geometry_msgs/Vector3 _pull_vec
     (send _pull_vec :deserialize buf ptr-) (incf ptr- (send _pull_vec :serialization-length))
   ;;
   self)
  )

(defclass dual_robot_msgs::GraspWireResponse
  :super ros::object
  :slots (_status ))

(defmethod dual_robot_msgs::GraspWireResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dual_robot_msgs::GraspWire
  :super ros::object
  :slots ())

(setf (get dual_robot_msgs::GraspWire :md5sum-) "e606f67dd60a8cc1664155100285b04a")
(setf (get dual_robot_msgs::GraspWire :datatype-) "dual_robot_msgs/GraspWire")
(setf (get dual_robot_msgs::GraspWire :request) dual_robot_msgs::GraspWireRequest)
(setf (get dual_robot_msgs::GraspWire :response) dual_robot_msgs::GraspWireResponse)

(defmethod dual_robot_msgs::GraspWireRequest
  (:response () (instance dual_robot_msgs::GraspWireResponse :init)))

(setf (get dual_robot_msgs::GraspWireRequest :md5sum-) "e606f67dd60a8cc1664155100285b04a")
(setf (get dual_robot_msgs::GraspWireRequest :datatype-) "dual_robot_msgs/GraspWireRequest")
(setf (get dual_robot_msgs::GraspWireRequest :definition-)
      "string robot
geometry_msgs/Pose wire_grasp_pose 
geometry_msgs/Vector3 pull_vec

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool status 
")

(setf (get dual_robot_msgs::GraspWireResponse :md5sum-) "e606f67dd60a8cc1664155100285b04a")
(setf (get dual_robot_msgs::GraspWireResponse :datatype-) "dual_robot_msgs/GraspWireResponse")
(setf (get dual_robot_msgs::GraspWireResponse :definition-)
      "string robot
geometry_msgs/Pose wire_grasp_pose 
geometry_msgs/Vector3 pull_vec

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool status 
")



(provide :dual_robot_msgs/GraspWire "e606f67dd60a8cc1664155100285b04a")


