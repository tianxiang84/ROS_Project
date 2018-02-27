; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-srv)


;//! \htmlinclude LoadConfig-request.msg.html

(cl:defclass <LoadConfig-request> (roslisp-msg-protocol:ros-message)
  ((config_type
    :reader config_type
    :initarg :config_type
    :type cl:fixnum
    :initform 0)
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform "")
   (set_persistent
    :reader set_persistent
    :initarg :set_persistent
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LoadConfig-request (<LoadConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<LoadConfig-request> is deprecated: use im_pickit_msgs-srv:LoadConfig-request instead.")))

(cl:ensure-generic-function 'config_type-val :lambda-list '(m))
(cl:defmethod config_type-val ((m <LoadConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:config_type-val is deprecated.  Use im_pickit_msgs-srv:config_type instead.")
  (config_type m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <LoadConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:path-val is deprecated.  Use im_pickit_msgs-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'set_persistent-val :lambda-list '(m))
(cl:defmethod set_persistent-val ((m <LoadConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:set_persistent-val is deprecated.  Use im_pickit_msgs-srv:set_persistent instead.")
  (set_persistent m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LoadConfig-request>)))
    "Constants for message type '<LoadConfig-request>"
  '((:CONFIG_SETUP . 1)
    (:CONFIG_PRODUCT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LoadConfig-request)))
    "Constants for message type 'LoadConfig-request"
  '((:CONFIG_SETUP . 1)
    (:CONFIG_PRODUCT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadConfig-request>) ostream)
  "Serializes a message object of type '<LoadConfig-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'config_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_persistent) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadConfig-request>) istream)
  "Deserializes a message object of type '<LoadConfig-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'config_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'set_persistent) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadConfig-request>)))
  "Returns string type for a service object of type '<LoadConfig-request>"
  "im_pickit_msgs/LoadConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadConfig-request)))
  "Returns string type for a service object of type 'LoadConfig-request"
  "im_pickit_msgs/LoadConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadConfig-request>)))
  "Returns md5sum for a message object of type '<LoadConfig-request>"
  "eab8b02e16fe6a8a2dd0ff58db907dfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadConfig-request)))
  "Returns md5sum for a message object of type 'LoadConfig-request"
  "eab8b02e16fe6a8a2dd0ff58db907dfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadConfig-request>)))
  "Returns full string definition for message of type '<LoadConfig-request>"
  (cl:format cl:nil "uint8 CONFIG_SETUP = 1~%uint8 CONFIG_PRODUCT = 2~%~%uint8     config_type~%string    path~%bool      set_persistent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadConfig-request)))
  "Returns full string definition for message of type 'LoadConfig-request"
  (cl:format cl:nil "uint8 CONFIG_SETUP = 1~%uint8 CONFIG_PRODUCT = 2~%~%uint8     config_type~%string    path~%bool      set_persistent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadConfig-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'path))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadConfig-request
    (cl:cons ':config_type (config_type msg))
    (cl:cons ':path (path msg))
    (cl:cons ':set_persistent (set_persistent msg))
))
;//! \htmlinclude LoadConfig-response.msg.html

(cl:defclass <LoadConfig-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass LoadConfig-response (<LoadConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<LoadConfig-response> is deprecated: use im_pickit_msgs-srv:LoadConfig-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LoadConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:success-val is deprecated.  Use im_pickit_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LoadConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:message-val is deprecated.  Use im_pickit_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadConfig-response>) ostream)
  "Serializes a message object of type '<LoadConfig-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadConfig-response>) istream)
  "Deserializes a message object of type '<LoadConfig-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadConfig-response>)))
  "Returns string type for a service object of type '<LoadConfig-response>"
  "im_pickit_msgs/LoadConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadConfig-response)))
  "Returns string type for a service object of type 'LoadConfig-response"
  "im_pickit_msgs/LoadConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadConfig-response>)))
  "Returns md5sum for a message object of type '<LoadConfig-response>"
  "eab8b02e16fe6a8a2dd0ff58db907dfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadConfig-response)))
  "Returns md5sum for a message object of type 'LoadConfig-response"
  "eab8b02e16fe6a8a2dd0ff58db907dfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadConfig-response>)))
  "Returns full string definition for message of type '<LoadConfig-response>"
  (cl:format cl:nil "bool      success~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadConfig-response)))
  "Returns full string definition for message of type 'LoadConfig-response"
  (cl:format cl:nil "bool      success~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadConfig-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadConfig-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadConfig)))
  'LoadConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadConfig)))
  'LoadConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadConfig)))
  "Returns string type for a service object of type '<LoadConfig>"
  "im_pickit_msgs/LoadConfig")