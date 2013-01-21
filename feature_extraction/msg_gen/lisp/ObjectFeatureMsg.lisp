; Auto-generated. Do not edit!


(cl:in-package feature_extraction-msg)


;//! \htmlinclude ObjectFeatureMsg.msg.html

(cl:defclass <ObjectFeatureMsg> (roslisp-msg-protocol:ros-message)
  ((features
    :reader features
    :initarg :features
    :type (cl:vector feature_extraction-msg:CvSURFPoint)
   :initform (cl:make-array 0 :element-type 'feature_extraction-msg:CvSURFPoint :initial-element (cl:make-instance 'feature_extraction-msg:CvSURFPoint)))
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass ObjectFeatureMsg (<ObjectFeatureMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectFeatureMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectFeatureMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name feature_extraction-msg:<ObjectFeatureMsg> is deprecated: use feature_extraction-msg:ObjectFeatureMsg instead.")))

(cl:ensure-generic-function 'features-val :lambda-list '(m))
(cl:defmethod features-val ((m <ObjectFeatureMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feature_extraction-msg:features-val is deprecated.  Use feature_extraction-msg:features instead.")
  (features m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ObjectFeatureMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feature_extraction-msg:image-val is deprecated.  Use feature_extraction-msg:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectFeatureMsg>) ostream)
  "Serializes a message object of type '<ObjectFeatureMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'features))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'features))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectFeatureMsg>) istream)
  "Deserializes a message object of type '<ObjectFeatureMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'features) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'features)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'feature_extraction-msg:CvSURFPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectFeatureMsg>)))
  "Returns string type for a message object of type '<ObjectFeatureMsg>"
  "feature_extraction/ObjectFeatureMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectFeatureMsg)))
  "Returns string type for a message object of type 'ObjectFeatureMsg"
  "feature_extraction/ObjectFeatureMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectFeatureMsg>)))
  "Returns md5sum for a message object of type '<ObjectFeatureMsg>"
  "59ec07cffbe2954664bbdcfb414ab07f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectFeatureMsg)))
  "Returns md5sum for a message object of type 'ObjectFeatureMsg"
  "59ec07cffbe2954664bbdcfb414ab07f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectFeatureMsg>)))
  "Returns full string definition for message of type '<ObjectFeatureMsg>"
  (cl:format cl:nil "CvSURFPoint[] features~%sensor_msgs/Image image~%~%================================================================================~%MSG: feature_extraction/CvSURFPoint~%# This message contains the same information as a CvSURFPoint from OpenCV2~%~%#fields for CvSURFPoint~%~%CvPoint2D32f pt~%~%# -1, 0 or +1. sign of the laplacian at the point.~%int32 laplacian ~%~%# size of the feature~%int32 size ~%~%# orientation of the feature: 0..360 degrees~%float32 dir ~%~%# value of the hessian (can be used to~%# approximately estimate the feature strengths;~%# see also params.hessianThreshold)~%float32 hessian ~%~%~%================================================================================~%MSG: feature_extraction/CvPoint2D32f~%float32 x~%float32 y~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in src/image_encodings.cpp~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectFeatureMsg)))
  "Returns full string definition for message of type 'ObjectFeatureMsg"
  (cl:format cl:nil "CvSURFPoint[] features~%sensor_msgs/Image image~%~%================================================================================~%MSG: feature_extraction/CvSURFPoint~%# This message contains the same information as a CvSURFPoint from OpenCV2~%~%#fields for CvSURFPoint~%~%CvPoint2D32f pt~%~%# -1, 0 or +1. sign of the laplacian at the point.~%int32 laplacian ~%~%# size of the feature~%int32 size ~%~%# orientation of the feature: 0..360 degrees~%float32 dir ~%~%# value of the hessian (can be used to~%# approximately estimate the feature strengths;~%# see also params.hessianThreshold)~%float32 hessian ~%~%~%================================================================================~%MSG: feature_extraction/CvPoint2D32f~%float32 x~%float32 y~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in src/image_encodings.cpp~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectFeatureMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'features) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectFeatureMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectFeatureMsg
    (cl:cons ':features (features msg))
    (cl:cons ':image (image msg))
))
