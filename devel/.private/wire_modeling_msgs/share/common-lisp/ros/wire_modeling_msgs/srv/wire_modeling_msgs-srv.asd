
(cl:in-package :asdf)

(defsystem "wire_modeling_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ProcessPointCloud" :depends-on ("_package_ProcessPointCloud"))
    (:file "_package_ProcessPointCloud" :depends-on ("_package"))
  ))