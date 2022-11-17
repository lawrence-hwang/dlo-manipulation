
(cl:in-package :asdf)

(defsystem "dual_robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "GraspObject" :depends-on ("_package_GraspObject"))
    (:file "_package_GraspObject" :depends-on ("_package"))
    (:file "GraspWire" :depends-on ("_package_GraspWire"))
    (:file "_package_GraspWire" :depends-on ("_package"))
  ))