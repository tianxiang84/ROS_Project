; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-srv)


;//! \htmlinclude CopyCalibration-request.msg.html

(cl:defclass <CopyCalibration-request> (roslisp-msg-protocol:ros-message)
  ((source_setup_file
    :reader source_setup_file
    :initarg :source_setup_file
    :type cl:string
    :initform "")
   (target_setup_file
    :reader target_setup_file
    :initarg :target_setup_file
    :type cl:string
    :initform ""))
)

(cl:defclass CopyCalibration-request (<CopyCalibration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CopyCalibration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CopyCalibration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<CopyCalibration-request> is deprecated: use im_pickit_msgs-srv:CopyCalibration-request instead.")))

(cl:ensure-generic-function 'source_setup_file-val :lambda-list '(m))
(cl:defmethod source_setup_file-val ((m <CopyCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:source_setup_file-val is deprecated.  Use im_pickit_msgs-srv:source_setup_file instead.")
  (source_setup_file m))

(cl:ensure-generic-function 'target_setup_file-val :lambda-list '(m))
(cl:defmethod target_setup_file-val ((m <CopyCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:target_setup_file-val is deprecated.  Use im_pickit_msgs-srv:target_setup_file instead.")
  (target_setup_file m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CopyCalibration-request>) ostream)
  "Serializes a message object of type '<CopyCalibration-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source_setup_file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source_setup_file))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_setup_file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_setup_file))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CopyCalibration-request>) istream)
  "Deserializes a message object of type '<CopyCalibration-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source_setup_file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source_setup_file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_setup_file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_setup_file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CopyCalibration-request>)))
  "Returns string type for a service object of type '<CopyCalibration-request>"
  "im_pickit_msgs/CopyCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyCalibration-request)))
  "Returns string type for a service object of type 'CopyCalibration-request"
  "im_pickit_msgs/CopyCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CopyCalibration-request>)))
  "Returns md5sum for a message object of type '<CopyCalibration-request>"
  "7d0f212b9fa08ad9ba6469711447fcc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CopyCalibration-request)))
  "Returns md5sum for a message object of type 'CopyCalibration-request"
  "7d0f212b9fa08ad9ba6469711447fcc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CopyCalibration-request>)))
  "Returns full string definition for message of type '<CopyCalibration-request>"
  (cl:format cl:nil "~%string    source_setup_file~%string    target_setup_file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CopyCalibration-request)))
  "Returns full string definition for message of type 'CopyCalibration-request"
  (cl:format cl:nil "~%string    source_setup_file~%string    target_setup_file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CopyCalibration-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source_setup_file))
     4 (cl:length (cl:slot-value msg 'target_setup_file))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CopyCalibration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CopyCalibration-request
    (cl:cons ':source_setup_file (source_setup_file msg))
    (cl:cons ':target_setup_file (target_setup_file msg))
))
;//! \htmlinclude CopyCalibration-response.msg.html

(cl:defclass <CopyCalibration-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass CopyCalibration-response (<CopyCalibration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CopyCalibration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CopyCalibration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<CopyCalibration-response> is deprecated: use im_pickit_msgs-srv:CopyCalibration-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CopyCalibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:success-val is deprecated.  Use im_pickit_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CopyCalibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:message-val is deprecated.  Use im_pickit_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CopyCalibration-response>) ostream)
  "Serializes a message object of type '<CopyCalibration-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CopyCalibration-response>) istream)
  "Deserializes a message object of type '<CopyCalibration-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CopyCalibration-response>)))
  "Returns string type for a service object of type '<CopyCalibration-response>"
  "im_pickit_msgs/CopyCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyCalibration-response)))
  "Returns string type for a service object of type 'CopyCalibration-response"
  "im_pickit_msgs/CopyCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CopyCalibration-response>)))
  "Returns md5sum for a message object of type '<CopyCalibration-response>"
  "7d0f212b9fa08ad9ba6469711447fcc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CopyCalibration-response)))
  "Returns md5sum for a message object of type 'CopyCalibration-response"
  "7d0f212b9fa08ad9ba6469711447fcc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CopyCalibration-response>)))
  "Returns full string definition for message of type '<CopyCalibration-response>"
  (cl:format cl:nil "bool      success~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CopyCalibration-response)))
  "Returns full string definition for message of type 'CopyCalibration-response"
  (cl:format cl:nil "bool      success~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CopyCalibration-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CopyCalibration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CopyCalibration-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CopyCalibration)))
  'CopyCalibration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CopyCalibration)))
  'CopyCalibration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyCalibration)))
  "Returns string type for a service object of type '<CopyCalibration>"
  "im_pickit_msgs/CopyCalibration")