; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-srv)


;//! \htmlinclude StrArg-request.msg.html

(cl:defclass <StrArg-request> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass StrArg-request (<StrArg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StrArg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StrArg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<StrArg-request> is deprecated: use im_pickit_msgs-srv:StrArg-request instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <StrArg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:str-val is deprecated.  Use im_pickit_msgs-srv:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StrArg-request>) ostream)
  "Serializes a message object of type '<StrArg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StrArg-request>) istream)
  "Deserializes a message object of type '<StrArg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StrArg-request>)))
  "Returns string type for a service object of type '<StrArg-request>"
  "im_pickit_msgs/StrArgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StrArg-request)))
  "Returns string type for a service object of type 'StrArg-request"
  "im_pickit_msgs/StrArgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StrArg-request>)))
  "Returns md5sum for a message object of type '<StrArg-request>"
  "8682e79b6a8d3cc445497c38297309bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StrArg-request)))
  "Returns md5sum for a message object of type 'StrArg-request"
  "8682e79b6a8d3cc445497c38297309bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StrArg-request>)))
  "Returns full string definition for message of type '<StrArg-request>"
  (cl:format cl:nil "string    str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StrArg-request)))
  "Returns full string definition for message of type 'StrArg-request"
  (cl:format cl:nil "string    str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StrArg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StrArg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StrArg-request
    (cl:cons ':str (str msg))
))
;//! \htmlinclude StrArg-response.msg.html

(cl:defclass <StrArg-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass StrArg-response (<StrArg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StrArg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StrArg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<StrArg-response> is deprecated: use im_pickit_msgs-srv:StrArg-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StrArg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:success-val is deprecated.  Use im_pickit_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StrArg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:message-val is deprecated.  Use im_pickit_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StrArg-response>) ostream)
  "Serializes a message object of type '<StrArg-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StrArg-response>) istream)
  "Deserializes a message object of type '<StrArg-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StrArg-response>)))
  "Returns string type for a service object of type '<StrArg-response>"
  "im_pickit_msgs/StrArgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StrArg-response)))
  "Returns string type for a service object of type 'StrArg-response"
  "im_pickit_msgs/StrArgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StrArg-response>)))
  "Returns md5sum for a message object of type '<StrArg-response>"
  "8682e79b6a8d3cc445497c38297309bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StrArg-response)))
  "Returns md5sum for a message object of type 'StrArg-response"
  "8682e79b6a8d3cc445497c38297309bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StrArg-response>)))
  "Returns full string definition for message of type '<StrArg-response>"
  (cl:format cl:nil "bool      success~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StrArg-response)))
  "Returns full string definition for message of type 'StrArg-response"
  (cl:format cl:nil "bool      success~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StrArg-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StrArg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StrArg-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StrArg)))
  'StrArg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StrArg)))
  'StrArg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StrArg)))
  "Returns string type for a service object of type '<StrArg>"
  "im_pickit_msgs/StrArg")