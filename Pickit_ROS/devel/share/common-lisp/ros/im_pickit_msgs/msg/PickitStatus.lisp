; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude PickitStatus.msg.html

(cl:defclass <PickitStatus> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (setup_file
    :reader setup_file
    :initarg :setup_file
    :type cl:string
    :initform "")
   (product_file
    :reader product_file
    :initarg :product_file
    :type cl:string
    :initform "")
   (setup_changed
    :reader setup_changed
    :initarg :setup_changed
    :type cl:boolean
    :initform cl:nil)
   (product_changed
    :reader product_changed
    :initarg :product_changed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PickitStatus (<PickitStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PickitStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PickitStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<PickitStatus> is deprecated: use im_pickit_msgs-msg:PickitStatus instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PickitStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:state-val is deprecated.  Use im_pickit_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'setup_file-val :lambda-list '(m))
(cl:defmethod setup_file-val ((m <PickitStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:setup_file-val is deprecated.  Use im_pickit_msgs-msg:setup_file instead.")
  (setup_file m))

(cl:ensure-generic-function 'product_file-val :lambda-list '(m))
(cl:defmethod product_file-val ((m <PickitStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:product_file-val is deprecated.  Use im_pickit_msgs-msg:product_file instead.")
  (product_file m))

(cl:ensure-generic-function 'setup_changed-val :lambda-list '(m))
(cl:defmethod setup_changed-val ((m <PickitStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:setup_changed-val is deprecated.  Use im_pickit_msgs-msg:setup_changed instead.")
  (setup_changed m))

(cl:ensure-generic-function 'product_changed-val :lambda-list '(m))
(cl:defmethod product_changed-val ((m <PickitStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:product_changed-val is deprecated.  Use im_pickit_msgs-msg:product_changed instead.")
  (product_changed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PickitStatus>) ostream)
  "Serializes a message object of type '<PickitStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'setup_file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'setup_file))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'product_file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'product_file))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setup_changed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'product_changed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PickitStatus>) istream)
  "Deserializes a message object of type '<PickitStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setup_file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'setup_file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'product_file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'product_file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'setup_changed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'product_changed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PickitStatus>)))
  "Returns string type for a message object of type '<PickitStatus>"
  "im_pickit_msgs/PickitStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PickitStatus)))
  "Returns string type for a message object of type 'PickitStatus"
  "im_pickit_msgs/PickitStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PickitStatus>)))
  "Returns md5sum for a message object of type '<PickitStatus>"
  "e66b3a740a3e3363c03cbef9c13ce9f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PickitStatus)))
  "Returns md5sum for a message object of type 'PickitStatus"
  "e66b3a740a3e3363c03cbef9c13ce9f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PickitStatus>)))
  "Returns full string definition for message of type '<PickitStatus>"
  (cl:format cl:nil "## Copyright Intermodalics 2014~%## This message contains Pick-it status information  ##~%~%string state~%~%string setup_file~%string product_file~%~%bool setup_changed~%bool product_changed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PickitStatus)))
  "Returns full string definition for message of type 'PickitStatus"
  (cl:format cl:nil "## Copyright Intermodalics 2014~%## This message contains Pick-it status information  ##~%~%string state~%~%string setup_file~%string product_file~%~%bool setup_changed~%bool product_changed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PickitStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'setup_file))
     4 (cl:length (cl:slot-value msg 'product_file))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PickitStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PickitStatus
    (cl:cons ':state (state msg))
    (cl:cons ':setup_file (setup_file msg))
    (cl:cons ':product_file (product_file msg))
    (cl:cons ':setup_changed (setup_changed msg))
    (cl:cons ':product_changed (product_changed msg))
))
