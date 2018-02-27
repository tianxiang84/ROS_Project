; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude MonitoringEvent.msg.html

(cl:defclass <MonitoringEvent> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (code
    :reader code
    :initarg :code
    :type cl:integer
    :initform 0)
   (source
    :reader source
    :initarg :source
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass MonitoringEvent (<MonitoringEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitoringEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitoringEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<MonitoringEvent> is deprecated: use im_pickit_msgs-msg:MonitoringEvent instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <MonitoringEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:stamp-val is deprecated.  Use im_pickit_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <MonitoringEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:code-val is deprecated.  Use im_pickit_msgs-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <MonitoringEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:source-val is deprecated.  Use im_pickit_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MonitoringEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:message-val is deprecated.  Use im_pickit_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MonitoringEvent>)))
    "Constants for message type '<MonitoringEvent>"
  '((:EVENT_SYSTEM_STARTED . 1)
    (:EVENT_SYSTEM_CONFIGURED . 2)
    (:EVENT_CAMERA_CONNECTED . 21)
    (:EVENT_CAMERA_DISCONNECTED . 22)
    (:EVENT_RC_CALIBRATION_SUCCEEDED . 31)
    (:EVENT_RC_CALIBRATION_REQUESTED . 32)
    (:EVENT_ROI_TEACHING_SUCCEEDED . 41)
    (:EVENT_SINGLE_DETECTION_REQUESTED . 51)
    (:EVENT_CONFIGURATION_REQUESTED . 61)
    (:EVENT_SNAPSHOT_REQUESTED . 81)
    (:EVENT_SNAPSHOT_LOADED . 82)
    (:EVENT_ROBOT_NEXT_OBJECT_REQUESTED . 101)
    (:SOURCE_UNSPECIFIED . 0)
    (:SOURCE_SYSTEM . 1)
    (:SOURCE_CAMERA . 2)
    (:SOURCE_ROBOT . 3)
    (:SOURCE_WEB_INTERFACE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MonitoringEvent)))
    "Constants for message type 'MonitoringEvent"
  '((:EVENT_SYSTEM_STARTED . 1)
    (:EVENT_SYSTEM_CONFIGURED . 2)
    (:EVENT_CAMERA_CONNECTED . 21)
    (:EVENT_CAMERA_DISCONNECTED . 22)
    (:EVENT_RC_CALIBRATION_SUCCEEDED . 31)
    (:EVENT_RC_CALIBRATION_REQUESTED . 32)
    (:EVENT_ROI_TEACHING_SUCCEEDED . 41)
    (:EVENT_SINGLE_DETECTION_REQUESTED . 51)
    (:EVENT_CONFIGURATION_REQUESTED . 61)
    (:EVENT_SNAPSHOT_REQUESTED . 81)
    (:EVENT_SNAPSHOT_LOADED . 82)
    (:EVENT_ROBOT_NEXT_OBJECT_REQUESTED . 101)
    (:SOURCE_UNSPECIFIED . 0)
    (:SOURCE_SYSTEM . 1)
    (:SOURCE_CAMERA . 2)
    (:SOURCE_ROBOT . 3)
    (:SOURCE_WEB_INTERFACE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitoringEvent>) ostream)
  "Serializes a message object of type '<MonitoringEvent>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'source)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitoringEvent>) istream)
  "Deserializes a message object of type '<MonitoringEvent>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitoringEvent>)))
  "Returns string type for a message object of type '<MonitoringEvent>"
  "im_pickit_msgs/MonitoringEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitoringEvent)))
  "Returns string type for a message object of type 'MonitoringEvent"
  "im_pickit_msgs/MonitoringEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitoringEvent>)))
  "Returns md5sum for a message object of type '<MonitoringEvent>"
  "5672f74acd1b7b29851e9bac432c4c5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitoringEvent)))
  "Returns md5sum for a message object of type 'MonitoringEvent"
  "5672f74acd1b7b29851e9bac432c4c5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitoringEvent>)))
  "Returns full string definition for message of type '<MonitoringEvent>"
  (cl:format cl:nil "# Definitions of event codes.~%# System specific events.~%int32 EVENT_SYSTEM_STARTED = 1~%int32 EVENT_SYSTEM_CONFIGURED = 2~%~%~%# Camera specific events.~%int32 EVENT_CAMERA_CONNECTED = 21~%int32 EVENT_CAMERA_DISCONNECTED = 22~%~%# TODO: Add many more events here.~%~%# Robot-camera calibration specific events.~%int32 EVENT_RC_CALIBRATION_SUCCEEDED = 31~%int32 EVENT_RC_CALIBRATION_REQUESTED = 32~%~%# Region of Interest (ROI) specific events.~%int32 EVENT_ROI_TEACHING_SUCCEEDED = 41~%~%# Detection related events.~%int32 EVENT_SINGLE_DETECTION_REQUESTED = 51~%~%# Configuration related events.~%int32 EVENT_CONFIGURATION_REQUESTED = 61~%~%# Snapshot related events.~%int32 EVENT_SNAPSHOT_REQUESTED = 81~%int32 EVENT_SNAPSHOT_LOADED = 82~%~%# Robot specific events.~%int32 EVENT_ROBOT_NEXT_OBJECT_REQUESTED = 101~%~%~%# Definitions of event sources.~%int32 SOURCE_UNSPECIFIED = 0~%int32 SOURCE_SYSTEM = 1~%int32 SOURCE_CAMERA = 2~%int32 SOURCE_ROBOT = 3~%int32 SOURCE_WEB_INTERFACE = 4~%~%# Message fields.~%time stamp~%int32 code~%int32 source          # Only relevant for events where the origin is not clear.~%string message        # Additional payload message.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitoringEvent)))
  "Returns full string definition for message of type 'MonitoringEvent"
  (cl:format cl:nil "# Definitions of event codes.~%# System specific events.~%int32 EVENT_SYSTEM_STARTED = 1~%int32 EVENT_SYSTEM_CONFIGURED = 2~%~%~%# Camera specific events.~%int32 EVENT_CAMERA_CONNECTED = 21~%int32 EVENT_CAMERA_DISCONNECTED = 22~%~%# TODO: Add many more events here.~%~%# Robot-camera calibration specific events.~%int32 EVENT_RC_CALIBRATION_SUCCEEDED = 31~%int32 EVENT_RC_CALIBRATION_REQUESTED = 32~%~%# Region of Interest (ROI) specific events.~%int32 EVENT_ROI_TEACHING_SUCCEEDED = 41~%~%# Detection related events.~%int32 EVENT_SINGLE_DETECTION_REQUESTED = 51~%~%# Configuration related events.~%int32 EVENT_CONFIGURATION_REQUESTED = 61~%~%# Snapshot related events.~%int32 EVENT_SNAPSHOT_REQUESTED = 81~%int32 EVENT_SNAPSHOT_LOADED = 82~%~%# Robot specific events.~%int32 EVENT_ROBOT_NEXT_OBJECT_REQUESTED = 101~%~%~%# Definitions of event sources.~%int32 SOURCE_UNSPECIFIED = 0~%int32 SOURCE_SYSTEM = 1~%int32 SOURCE_CAMERA = 2~%int32 SOURCE_ROBOT = 3~%int32 SOURCE_WEB_INTERFACE = 4~%~%# Message fields.~%time stamp~%int32 code~%int32 source          # Only relevant for events where the origin is not clear.~%string message        # Additional payload message.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitoringEvent>))
  (cl:+ 0
     8
     4
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitoringEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitoringEvent
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':code (code msg))
    (cl:cons ':source (source msg))
    (cl:cons ':message (message msg))
))
