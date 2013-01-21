; Auto-generated. Do not edit!


(cl:in-package feature_extraction-msg)


;//! \htmlinclude CvSURFPoint.msg.html

(cl:defclass <CvSURFPoint> (roslisp-msg-protocol:ros-message)
  ((pt
    :reader pt
    :initarg :pt
    :type feature_extraction-msg:CvPoint2D32f
    :initform (cl:make-instance 'feature_extraction-msg:CvPoint2D32f))
   (laplacian
    :reader laplacian
    :initarg :laplacian
    :type cl:integer
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (dir
    :reader dir
    :initarg :dir
    :type cl:float
    :initform 0.0)
   (hessian
    :reader hessian
    :initarg :hessian
    :type cl:float
    :initform 0.0))
)

(cl:defclass CvSURFPoint (<CvSURFPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CvSURFPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CvSURFPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name feature_extraction-msg:<CvSURFPoint> is deprecated: use feature_extraction-msg:CvSURFPoint instead.")))

(cl:ensure-generic-function 'pt-val :lambda-list '(m))
(cl:defmethod pt-val ((m <CvSURFPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feature_extraction-msg:pt-val is deprecated.  Use feature_extraction-msg:pt instead.")
  (pt m))

(cl:ensure-generic-function 'laplacian-val :lambda-list '(m))
(cl:defmethod laplacian-val ((m <CvSURFPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feature_extraction-msg:laplacian-val is deprecated.  Use feature_extraction-msg:laplacian instead.")
  (laplacian m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <CvSURFPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feature_extraction-msg:size-val is deprecated.  Use feature_extraction-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <CvSURFPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feature_extraction-msg:dir-val is deprecated.  Use feature_extraction-msg:dir instead.")
  (dir m))

(cl:ensure-generic-function 'hessian-val :lambda-list '(m))
(cl:defmethod hessian-val ((m <CvSURFPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feature_extraction-msg:hessian-val is deprecated.  Use feature_extraction-msg:hessian instead.")
  (hessian m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CvSURFPoint>) ostream)
  "Serializes a message object of type '<CvSURFPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pt) ostream)
  (cl:let* ((signed (cl:slot-value msg 'laplacian)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hessian))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CvSURFPoint>) istream)
  "Deserializes a message object of type '<CvSURFPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pt) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laplacian) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dir) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hessian) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CvSURFPoint>)))
  "Returns string type for a message object of type '<CvSURFPoint>"
  "feature_extraction/CvSURFPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CvSURFPoint)))
  "Returns string type for a message object of type 'CvSURFPoint"
  "feature_extraction/CvSURFPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CvSURFPoint>)))
  "Returns md5sum for a message object of type '<CvSURFPoint>"
  "92d9319ec370a158af36e7154ee6f510")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CvSURFPoint)))
  "Returns md5sum for a message object of type 'CvSURFPoint"
  "92d9319ec370a158af36e7154ee6f510")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CvSURFPoint>)))
  "Returns full string definition for message of type '<CvSURFPoint>"
  (cl:format cl:nil "# This message contains the same information as a CvSURFPoint from OpenCV2~%~%#fields for CvSURFPoint~%~%CvPoint2D32f pt~%~%# -1, 0 or +1. sign of the laplacian at the point.~%int32 laplacian ~%~%# size of the feature~%int32 size ~%~%# orientation of the feature: 0..360 degrees~%float32 dir ~%~%# value of the hessian (can be used to~%# approximately estimate the feature strengths;~%# see also params.hessianThreshold)~%float32 hessian ~%~%~%================================================================================~%MSG: feature_extraction/CvPoint2D32f~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CvSURFPoint)))
  "Returns full string definition for message of type 'CvSURFPoint"
  (cl:format cl:nil "# This message contains the same information as a CvSURFPoint from OpenCV2~%~%#fields for CvSURFPoint~%~%CvPoint2D32f pt~%~%# -1, 0 or +1. sign of the laplacian at the point.~%int32 laplacian ~%~%# size of the feature~%int32 size ~%~%# orientation of the feature: 0..360 degrees~%float32 dir ~%~%# value of the hessian (can be used to~%# approximately estimate the feature strengths;~%# see also params.hessianThreshold)~%float32 hessian ~%~%~%================================================================================~%MSG: feature_extraction/CvPoint2D32f~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CvSURFPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pt))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CvSURFPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'CvSURFPoint
    (cl:cons ':pt (pt msg))
    (cl:cons ':laplacian (laplacian msg))
    (cl:cons ':size (size msg))
    (cl:cons ':dir (dir msg))
    (cl:cons ':hessian (hessian msg))
))
