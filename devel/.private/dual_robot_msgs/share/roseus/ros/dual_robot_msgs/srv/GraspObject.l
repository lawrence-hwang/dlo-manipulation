;; Auto-generated. Do not edit!


(when (boundp 'dual_robot_msgs::GraspObject)
  (if (not (find-package "DUAL_ROBOT_MSGS"))
    (make-package "DUAL_ROBOT_MSGS"))
  (shadow 'GraspObject (find-package "DUAL_ROBOT_MSGS")))
(unless (find-package "DUAL_ROBOT_MSGS::GRASPOBJECT")
  (make-package "DUAL_ROBOT_MSGS::GRASPOBJECT"))
(unless (find-package "DUAL_ROBOT_MSGS::GRASPOBJECTREQUEST")
  (make-package "DUAL_ROBOT_MSGS::GRASPOBJECTREQUEST"))
(unless (find-package "DUAL_ROBOT_MSGS::GRASPOBJECTRESPONSE")
  (make-package "DUAL_ROBOT_MSGS::GRASPOBJECTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass dual_robot_msgs::GraspObjectRequest
  :super ros::object
  :slots (_robot _object_grasp_pose ))

(defmethod dual_robot_msgs::GraspObjectRequest
  (:init
   (&key
    ((:robot __robot) "")
    ((:object_grasp_pose __object_grasp_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _robot (string __robot))
   (setq _object_grasp_pose __object_grasp_pose)
   self)
  (:robot
   (&optional __robot)
   (if __robot (setq _robot __robot)) _robot)
  (:object_grasp_pose
   (&rest __object_grasp_pose)
   (if (keywordp (car __object_grasp_pose))
       (send* _object_grasp_pose __object_grasp_pose)
     (progn
       (if __object_grasp_pose (setq _object_grasp_pose (car __object_grasp_pose)))
       _object_grasp_pose)))
  (:serialization-length
   ()
   (+
    ;; string _robot
    4 (length _robot)
    ;; geometry_msgs/Pose _object_grasp_pose
    (send _object_grasp_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot
       (write-long (length _robot) s) (princ _robot s)
     ;; geometry_msgs/Pose _object_grasp_pose
       (send _object_grasp_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _object_grasp_pose
     (send _object_grasp_pose :deserialize buf ptr-) (incf ptr- (send _object_grasp_pose :serialization-length))
   ;;
   self)
  )

(defclass dual_robot_msgs::GraspObjectResponse
  :super ros::object
  :slots (_status ))

(defmethod dual_robot_msgs::GraspObjectResponse
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

(defclass dual_robot_msgs::GraspObject
  :super ros::object
  :slots ())

(setf (get dual_robot_msgs::GraspObject :md5sum-) "12262fe8f8c7e2294f69e77ba46a1d34")
(setf (get dual_robot_msgs::GraspObject :datatype-) "dual_robot_msgs/GraspObject")
(setf (get dual_robot_msgs::GraspObject :request) dual_robot_msgs::GraspObjectRequest)
(setf (get dual_robot_msgs::GraspObject :response) dual_robot_msgs::GraspObjectResponse)

(defmethod dual_robot_msgs::GraspObjectRequest
  (:response () (instance dual_robot_msgs::GraspObjectResponse :init)))

(setf (get dual_robot_msgs::GraspObjectRequest :md5sum-) "12262fe8f8c7e2294f69e77ba46a1d34")
(setf (get dual_robot_msgs::GraspObjectRequest :datatype-) "dual_robot_msgs/GraspObjectRequest")
(setf (get dual_robot_msgs::GraspObjectRequest :definition-)
      "string robot
geometry_msgs/Pose object_grasp_pose 

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
---
bool status 
")

(setf (get dual_robot_msgs::GraspObjectResponse :md5sum-) "12262fe8f8c7e2294f69e77ba46a1d34")
(setf (get dual_robot_msgs::GraspObjectResponse :datatype-) "dual_robot_msgs/GraspObjectResponse")
(setf (get dual_robot_msgs::GraspObjectResponse :definition-)
      "string robot
geometry_msgs/Pose object_grasp_pose 

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
---
bool status 
")



(provide :dual_robot_msgs/GraspObject "12262fe8f8c7e2294f69e77ba46a1d34")


