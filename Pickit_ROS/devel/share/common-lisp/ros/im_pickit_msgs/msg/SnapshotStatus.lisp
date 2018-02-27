; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude SnapshotStatus.msg.html

(cl:defclass <SnapshotStatus> (roslisp-msg-protocol:ros-message)
  ((snapshot_mode
    :reader snapshot_mode
    :initarg :snapshot_mode
    :type cl:boolean
    :initform cl:nil)
   (snapshot_name
    :reader snapshot_name
    :initarg :snapshot_name
    :type cl:string
    :initform "")
   (system_id
    :reader system_id
    :initarg :system_id
    :type cl:string
    :initform "")
   (pickit_version
    :reader pickit_version
    :initarg :pickit_version
    :type cl:string
    :initform "")
   (robot_type
    :reader robot_type
    :initarg :robot_type
    :type cl:string
    :initform ""))
)

(cl:defclass SnapshotStatus (<SnapshotStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SnapshotStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SnapshotStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<SnapshotStatus> is deprecated: use im_pickit_msgs-msg:SnapshotStatus instead.")))

(cl:ensure-generic-function 'snapshot_mode-val :lambda-list '(m))
(cl:defmethod snapshot_mode-val ((m <SnapshotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:snapshot_mode-val is deprecated.  Use im_pickit_msgs-msg:snapshot_mode instead.")
  (snapshot_mode m))

(cl:ensure-generic-function 'snapshot_name-val :lambda-list '(m))
(cl:defmethod snapshot_name-val ((m <SnapshotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:snapshot_name-val is deprecated.  Use im_pickit_msgs-msg:snapshot_name instead.")
  (snapshot_name m))

(cl:ensure-generic-function 'system_id-val :lambda-list '(m))
(cl:defmethod system_id-val ((m <SnapshotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:system_id-val is deprecated.  Use im_pickit_msgs-msg:system_id instead.")
  (system_id m))

(cl:ensure-generic-function 'pickit_version-val :lambda-list '(m))
(cl:defmethod pickit_version-val ((m <SnapshotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:pickit_version-val is deprecated.  Use im_pickit_msgs-msg:pickit_version instead.")
  (pickit_version m))

(cl:ensure-generic-function 'robot_type-val :lambda-list '(m))
(cl:defmethod robot_type-val ((m <SnapshotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:robot_type-val is deprecated.  Use im_pickit_msgs-msg:robot_type instead.")
  (robot_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SnapshotStatus>) ostream)
  "Serializes a message object of type '<SnapshotStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'snapshot_mode) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'snapshot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'snapshot_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'system_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'system_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pickit_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pickit_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SnapshotStatus>) istream)
  "Deserializes a message object of type '<SnapshotStatus>"
    (cl:setf (cl:slot-value msg 'snapshot_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'snapshot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'snapshot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'system_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'system_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pickit_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pickit_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SnapshotStatus>)))
  "Returns string type for a message object of type '<SnapshotStatus>"
  "im_pickit_msgs/SnapshotStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SnapshotStatus)))
  "Returns string type for a message object of type 'SnapshotStatus"
  "im_pickit_msgs/SnapshotStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SnapshotStatus>)))
  "Returns md5sum for a message object of type '<SnapshotStatus>"
  "e1c1150594163791dcb2936812dacac0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SnapshotStatus)))
  "Returns md5sum for a message object of type 'SnapshotStatus"
  "e1c1150594163791dcb2936812dacac0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SnapshotStatus>)))
  "Returns full string definition for message of type '<SnapshotStatus>"
  (cl:format cl:nil "bool snapshot_mode            # boolean indicating whether we are in snapshot mode or not~%string snapshot_name          # name of the loaded snapshot~%string system_id                  # Hostname of the machine that generated the snapshot~%string pickit_version             # Git hash in case of compilation from source OR pickit version~%string robot_type                 # Robot type from the socket interface.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SnapshotStatus)))
  "Returns full string definition for message of type 'SnapshotStatus"
  (cl:format cl:nil "bool snapshot_mode            # boolean indicating whether we are in snapshot mode or not~%string snapshot_name          # name of the loaded snapshot~%string system_id                  # Hostname of the machine that generated the snapshot~%string pickit_version             # Git hash in case of compilation from source OR pickit version~%string robot_type                 # Robot type from the socket interface.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SnapshotStatus>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'snapshot_name))
     4 (cl:length (cl:slot-value msg 'system_id))
     4 (cl:length (cl:slot-value msg 'pickit_version))
     4 (cl:length (cl:slot-value msg 'robot_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SnapshotStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SnapshotStatus
    (cl:cons ':snapshot_mode (snapshot_mode msg))
    (cl:cons ':snapshot_name (snapshot_name msg))
    (cl:cons ':system_id (system_id msg))
    (cl:cons ':pickit_version (pickit_version msg))
    (cl:cons ':robot_type (robot_type msg))
))
