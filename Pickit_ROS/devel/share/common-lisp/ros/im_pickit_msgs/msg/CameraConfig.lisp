; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude CameraConfig.msg.html

(cl:defclass <CameraConfig> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (serial
    :reader serial
    :initarg :serial
    :type cl:string
    :initform ""))
)

(cl:defclass CameraConfig (<CameraConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<CameraConfig> is deprecated: use im_pickit_msgs-msg:CameraConfig instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CameraConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:name-val is deprecated.  Use im_pickit_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'serial-val :lambda-list '(m))
(cl:defmethod serial-val ((m <CameraConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:serial-val is deprecated.  Use im_pickit_msgs-msg:serial instead.")
  (serial m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraConfig>) ostream)
  "Serializes a message object of type '<CameraConfig>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraConfig>) istream)
  "Deserializes a message object of type '<CameraConfig>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraConfig>)))
  "Returns string type for a message object of type '<CameraConfig>"
  "im_pickit_msgs/CameraConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraConfig)))
  "Returns string type for a message object of type 'CameraConfig"
  "im_pickit_msgs/CameraConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraConfig>)))
  "Returns md5sum for a message object of type '<CameraConfig>"
  "4914eb207f0463464c48e14410d8a949")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraConfig)))
  "Returns md5sum for a message object of type 'CameraConfig"
  "4914eb207f0463464c48e14410d8a949")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraConfig>)))
  "Returns full string definition for message of type '<CameraConfig>"
  (cl:format cl:nil "# Message fields~%string name                                 # name (=namespace) of the camera (unique!)~%string serial                               # Serial number.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraConfig)))
  "Returns full string definition for message of type 'CameraConfig"
  (cl:format cl:nil "# Message fields~%string name                                 # name (=namespace) of the camera (unique!)~%string serial                               # Serial number.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraConfig>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'serial))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraConfig
    (cl:cons ':name (name msg))
    (cl:cons ':serial (serial msg))
))
