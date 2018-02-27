; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-srv)


;//! \htmlinclude SaveSnapshot-request.msg.html

(cl:defclass <SaveSnapshot-request> (roslisp-msg-protocol:ros-message)
  ((snapshot_name
    :reader snapshot_name
    :initarg :snapshot_name
    :type cl:string
    :initform "")
   (robot_request
    :reader robot_request
    :initarg :robot_request
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveSnapshot-request (<SaveSnapshot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveSnapshot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveSnapshot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<SaveSnapshot-request> is deprecated: use im_pickit_msgs-srv:SaveSnapshot-request instead.")))

(cl:ensure-generic-function 'snapshot_name-val :lambda-list '(m))
(cl:defmethod snapshot_name-val ((m <SaveSnapshot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:snapshot_name-val is deprecated.  Use im_pickit_msgs-srv:snapshot_name instead.")
  (snapshot_name m))

(cl:ensure-generic-function 'robot_request-val :lambda-list '(m))
(cl:defmethod robot_request-val ((m <SaveSnapshot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:robot_request-val is deprecated.  Use im_pickit_msgs-srv:robot_request instead.")
  (robot_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveSnapshot-request>) ostream)
  "Serializes a message object of type '<SaveSnapshot-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'snapshot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'snapshot_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'robot_request) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveSnapshot-request>) istream)
  "Deserializes a message object of type '<SaveSnapshot-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'snapshot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'snapshot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'robot_request) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveSnapshot-request>)))
  "Returns string type for a service object of type '<SaveSnapshot-request>"
  "im_pickit_msgs/SaveSnapshotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveSnapshot-request)))
  "Returns string type for a service object of type 'SaveSnapshot-request"
  "im_pickit_msgs/SaveSnapshotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveSnapshot-request>)))
  "Returns md5sum for a message object of type '<SaveSnapshot-request>"
  "90190d82af18bd6fd2d3560080cbe804")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveSnapshot-request)))
  "Returns md5sum for a message object of type 'SaveSnapshot-request"
  "90190d82af18bd6fd2d3560080cbe804")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveSnapshot-request>)))
  "Returns full string definition for message of type '<SaveSnapshot-request>"
  (cl:format cl:nil "string    snapshot_name~%bool      robot_request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveSnapshot-request)))
  "Returns full string definition for message of type 'SaveSnapshot-request"
  (cl:format cl:nil "string    snapshot_name~%bool      robot_request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveSnapshot-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'snapshot_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveSnapshot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveSnapshot-request
    (cl:cons ':snapshot_name (snapshot_name msg))
    (cl:cons ':robot_request (robot_request msg))
))
;//! \htmlinclude SaveSnapshot-response.msg.html

(cl:defclass <SaveSnapshot-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SaveSnapshot-response (<SaveSnapshot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveSnapshot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveSnapshot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<SaveSnapshot-response> is deprecated: use im_pickit_msgs-srv:SaveSnapshot-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveSnapshot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:success-val is deprecated.  Use im_pickit_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveSnapshot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:message-val is deprecated.  Use im_pickit_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveSnapshot-response>) ostream)
  "Serializes a message object of type '<SaveSnapshot-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveSnapshot-response>) istream)
  "Deserializes a message object of type '<SaveSnapshot-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveSnapshot-response>)))
  "Returns string type for a service object of type '<SaveSnapshot-response>"
  "im_pickit_msgs/SaveSnapshotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveSnapshot-response)))
  "Returns string type for a service object of type 'SaveSnapshot-response"
  "im_pickit_msgs/SaveSnapshotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveSnapshot-response>)))
  "Returns md5sum for a message object of type '<SaveSnapshot-response>"
  "90190d82af18bd6fd2d3560080cbe804")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveSnapshot-response)))
  "Returns md5sum for a message object of type 'SaveSnapshot-response"
  "90190d82af18bd6fd2d3560080cbe804")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveSnapshot-response>)))
  "Returns full string definition for message of type '<SaveSnapshot-response>"
  (cl:format cl:nil "bool      success~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveSnapshot-response)))
  "Returns full string definition for message of type 'SaveSnapshot-response"
  (cl:format cl:nil "bool      success~%string    message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveSnapshot-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveSnapshot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveSnapshot-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveSnapshot)))
  'SaveSnapshot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveSnapshot)))
  'SaveSnapshot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveSnapshot)))
  "Returns string type for a service object of type '<SaveSnapshot>"
  "im_pickit_msgs/SaveSnapshot")