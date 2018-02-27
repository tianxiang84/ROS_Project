; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-srv)


;//! \htmlinclude LoadSnapshot-request.msg.html

(cl:defclass <LoadSnapshot-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass LoadSnapshot-request (<LoadSnapshot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadSnapshot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadSnapshot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<LoadSnapshot-request> is deprecated: use im_pickit_msgs-srv:LoadSnapshot-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <LoadSnapshot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:path-val is deprecated.  Use im_pickit_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadSnapshot-request>) ostream)
  "Serializes a message object of type '<LoadSnapshot-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadSnapshot-request>) istream)
  "Deserializes a message object of type '<LoadSnapshot-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadSnapshot-request>)))
  "Returns string type for a service object of type '<LoadSnapshot-request>"
  "im_pickit_msgs/LoadSnapshotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadSnapshot-request)))
  "Returns string type for a service object of type 'LoadSnapshot-request"
  "im_pickit_msgs/LoadSnapshotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadSnapshot-request>)))
  "Returns md5sum for a message object of type '<LoadSnapshot-request>"
  "a6bc470520bc753be0bc358804c232a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadSnapshot-request)))
  "Returns md5sum for a message object of type 'LoadSnapshot-request"
  "a6bc470520bc753be0bc358804c232a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadSnapshot-request>)))
  "Returns full string definition for message of type '<LoadSnapshot-request>"
  (cl:format cl:nil "string    path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadSnapshot-request)))
  "Returns full string definition for message of type 'LoadSnapshot-request"
  (cl:format cl:nil "string    path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadSnapshot-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadSnapshot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadSnapshot-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude LoadSnapshot-response.msg.html

(cl:defclass <LoadSnapshot-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass LoadSnapshot-response (<LoadSnapshot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadSnapshot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadSnapshot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<LoadSnapshot-response> is deprecated: use im_pickit_msgs-srv:LoadSnapshot-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LoadSnapshot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:success-val is deprecated.  Use im_pickit_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LoadSnapshot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:message-val is deprecated.  Use im_pickit_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadSnapshot-response>) ostream)
  "Serializes a message object of type '<LoadSnapshot-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadSnapshot-response>) istream)
  "Deserializes a message object of type '<LoadSnapshot-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadSnapshot-response>)))
  "Returns string type for a service object of type '<LoadSnapshot-response>"
  "im_pickit_msgs/LoadSnapshotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadSnapshot-response)))
  "Returns string type for a service object of type 'LoadSnapshot-response"
  "im_pickit_msgs/LoadSnapshotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadSnapshot-response>)))
  "Returns md5sum for a message object of type '<LoadSnapshot-response>"
  "a6bc470520bc753be0bc358804c232a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadSnapshot-response)))
  "Returns md5sum for a message object of type 'LoadSnapshot-response"
  "a6bc470520bc753be0bc358804c232a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadSnapshot-response>)))
  "Returns full string definition for message of type '<LoadSnapshot-response>"
  (cl:format cl:nil "bool      success~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadSnapshot-response)))
  "Returns full string definition for message of type 'LoadSnapshot-response"
  (cl:format cl:nil "bool      success~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadSnapshot-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadSnapshot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadSnapshot-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadSnapshot)))
  'LoadSnapshot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadSnapshot)))
  'LoadSnapshot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadSnapshot)))
  "Returns string type for a service object of type '<LoadSnapshot>"
  "im_pickit_msgs/LoadSnapshot")