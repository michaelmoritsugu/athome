
(cl:in-package :asdf)

(defsystem "feature_extraction-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "CvSURFPoint" :depends-on ("_package_CvSURFPoint"))
    (:file "_package_CvSURFPoint" :depends-on ("_package"))
    (:file "ObjectFeatureMsg" :depends-on ("_package_ObjectFeatureMsg"))
    (:file "_package_ObjectFeatureMsg" :depends-on ("_package"))
    (:file "CvPoint2D32f" :depends-on ("_package_CvPoint2D32f"))
    (:file "_package_CvPoint2D32f" :depends-on ("_package"))
  ))