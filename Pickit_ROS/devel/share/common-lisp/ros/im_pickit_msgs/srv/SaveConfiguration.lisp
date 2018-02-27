; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-srv)


;//! \htmlinclude SaveConfiguration-request.msg.html

(cl:defclass <SaveConfiguration-request> (roslisp-msg-protocol:ros-message)
  ((config_file_path
    :reader config_file_path
    :initarg :config_file_path
    :type cl:string
    :initform "")
   (set_active
    :reader set_active
    :initarg :set_active
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveConfiguration-request (<SaveConfiguration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveConfiguration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveConfiguration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<SaveConfiguration-request> is deprecated: use im_pickit_msgs-srv:SaveConfiguration-request instead.")))

(cl:ensure-generic-function 'config_file_path-val :lambda-list '(m))
(cl:defmethod config_file_path-val ((m <SaveConfiguration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:config_file_path-val is deprecated.  Use im_pickit_msgs-srv:config_file_path instead.")
  (config_file_path m))

(cl:ensure-generic-function 'set_active-val :lambda-list '(m))
(cl:defmethod set_active-val ((m <SaveConfiguration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:set_active-val is deprecated.  Use im_pickit_msgs-srv:set_active instead.")
  (set_active m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SaveConfiguration-request>)))
    "Constants for message type '<SaveConfiguration-request>"
  '((:STATUS_SUCCESS . 10)
    (:STATUS_FAILURE . 20)
    (:STATUS_INVALID_FILENAME . 22))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SaveConfiguration-request)))
    "Constants for message type 'SaveConfiguration-request"
  '((:STATUS_SUCCESS . 10)
    (:STATUS_FAILURE . 20)
    (:STATUS_INVALID_FILENAME . 22))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveConfiguration-request>) ostream)
  "Serializes a message object of type '<SaveConfiguration-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'config_file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'config_file_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_active) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveConfiguration-request>) istream)
  "Deserializes a message object of type '<SaveConfiguration-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'config_file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'config_file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'set_active) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveConfiguration-request>)))
  "Returns string type for a service object of type '<SaveConfiguration-request>"
  "im_pickit_msgs/SaveConfigurationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveConfiguration-request)))
  "Returns string type for a service object of type 'SaveConfiguration-request"
  "im_pickit_msgs/SaveConfigurationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveConfiguration-request>)))
  "Returns md5sum for a message object of type '<SaveConfiguration-request>"
  "0dd17841f9345006b1b64154016fca6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveConfiguration-request)))
  "Returns md5sum for a message object of type 'SaveConfiguration-request"
  "0dd17841f9345006b1b64154016fca6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveConfiguration-request>)))
  "Returns full string definition for message of type '<SaveConfiguration-request>"
  (cl:format cl:nil "uint8 STATUS_SUCCESS          = 10~%uint8 STATUS_FAILURE          = 20~%~%uint8 STATUS_INVALID_FILENAME = 22~%~%string    config_file_path~%bool      set_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveConfiguration-request)))
  "Returns full string definition for message of type 'SaveConfiguration-request"
  (cl:format cl:nil "uint8 STATUS_SUCCESS          = 10~%uint8 STATUS_FAILURE          = 20~%~%uint8 STATUS_INVALID_FILENAME = 22~%~%string    config_file_path~%bool      set_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveConfiguration-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'config_file_path))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveConfiguration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveConfiguration-request
    (cl:cons ':config_file_path (config_file_path msg))
    (cl:cons ':set_active (set_active msg))
))
;//! \htmlinclude SaveConfiguration-response.msg.html

(cl:defclass <SaveConfiguration-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SaveConfiguration-response (<SaveConfiguration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveConfiguration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveConfiguration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<SaveConfiguration-response> is deprecated: use im_pickit_msgs-srv:SaveConfiguration-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SaveConfiguration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:status-val is deprecated.  Use im_pickit_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveConfiguration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:message-val is deprecated.  Use im_pickit_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveConfiguration-response>) ostream)
  "Serializes a message object of type '<SaveConfiguration-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveConfiguration-response>) istream)
  "Deserializes a message object of type '<SaveConfiguration-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveConfiguration-response>)))
  "Returns string type for a service object of type '<SaveConfiguration-response>"
  "im_pickit_msgs/SaveConfigurationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveConfiguration-response)))
  "Returns string type for a service object of type 'SaveConfiguration-response"
  "im_pickit_msgs/SaveConfigurationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveConfiguration-response>)))
  "Returns md5sum for a message object of type '<SaveConfiguration-response>"
  "0dd17841f9345006b1b64154016fca6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveConfiguration-response)))
  "Returns md5sum for a message object of type 'SaveConfiguration-response"
  "0dd17841f9345006b1b64154016fca6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveConfiguration-response>)))
  "Returns full string definition for message of type '<SaveConfiguration-response>"
  (cl:format cl:nil "uint8     status~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveConfiguration-response)))
  "Returns full string definition for message of type 'SaveConfiguration-response"
  (cl:format cl:nil "uint8     status~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveConfiguration-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveConfiguration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveConfiguration-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveConfiguration)))
  'SaveConfiguration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveConfiguration)))
  'SaveConfiguration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveConfiguration)))
  "Returns string type for a service object of type '<SaveConfiguration>"
  "im_pickit_msgs/SaveConfiguration")