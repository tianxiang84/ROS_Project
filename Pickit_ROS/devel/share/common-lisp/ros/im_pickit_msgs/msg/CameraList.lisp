; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude CameraList.msg.html

(cl:defclass <CameraList> (roslisp-msg-protocol:ros-message)
  ((cameras
    :reader cameras
    :initarg :cameras
    :type (cl:vector im_pickit_msgs-msg:CameraConfig)
   :initform (cl:make-array 0 :element-type 'im_pickit_msgs-msg:CameraConfig :initial-element (cl:make-instance 'im_pickit_msgs-msg:CameraConfig)))
   (camera_states
    :reader camera_states
    :initarg :camera_states
    :type (cl:vector im_pickit_msgs-msg:CameraState)
   :initform (cl:make-array 0 :element-type 'im_pickit_msgs-msg:CameraState :initial-element (cl:make-instance 'im_pickit_msgs-msg:CameraState))))
)

(cl:defclass CameraList (<CameraList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<CameraList> is deprecated: use im_pickit_msgs-msg:CameraList instead.")))

(cl:ensure-generic-function 'cameras-val :lambda-list '(m))
(cl:defmethod cameras-val ((m <CameraList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:cameras-val is deprecated.  Use im_pickit_msgs-msg:cameras instead.")
  (cameras m))

(cl:ensure-generic-function 'camera_states-val :lambda-list '(m))
(cl:defmethod camera_states-val ((m <CameraList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:camera_states-val is deprecated.  Use im_pickit_msgs-msg:camera_states instead.")
  (camera_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraList>) ostream)
  "Serializes a message object of type '<CameraList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cameras))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cameras))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'camera_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'camera_states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraList>) istream)
  "Deserializes a message object of type '<CameraList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cameras) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cameras)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'im_pickit_msgs-msg:CameraConfig))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'camera_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'camera_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'im_pickit_msgs-msg:CameraState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraList>)))
  "Returns string type for a message object of type '<CameraList>"
  "im_pickit_msgs/CameraList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraList)))
  "Returns string type for a message object of type 'CameraList"
  "im_pickit_msgs/CameraList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraList>)))
  "Returns md5sum for a message object of type '<CameraList>"
  "e437b032a8e9ff1590a662fd97c982f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraList)))
  "Returns md5sum for a message object of type 'CameraList"
  "e437b032a8e9ff1590a662fd97c982f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraList>)))
  "Returns full string definition for message of type '<CameraList>"
  (cl:format cl:nil "CameraConfig[] cameras        # List of known cameras.~%CameraState[] camera_states   # Corresponding camera states.~%~%================================================================================~%MSG: im_pickit_msgs/CameraConfig~%# Message fields~%string name                                 # name (=namespace) of the camera (unique!)~%string serial                               # Serial number.~%~%================================================================================~%MSG: im_pickit_msgs/CameraState~%uint8 STATE_REGISTERED    = 1~%uint8 STATE_CONNECTED     = 2~%uint8 STATE_DISCONNECTED  = 3~%~%uint8 state   # Camera state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraList)))
  "Returns full string definition for message of type 'CameraList"
  (cl:format cl:nil "CameraConfig[] cameras        # List of known cameras.~%CameraState[] camera_states   # Corresponding camera states.~%~%================================================================================~%MSG: im_pickit_msgs/CameraConfig~%# Message fields~%string name                                 # name (=namespace) of the camera (unique!)~%string serial                               # Serial number.~%~%================================================================================~%MSG: im_pickit_msgs/CameraState~%uint8 STATE_REGISTERED    = 1~%uint8 STATE_CONNECTED     = 2~%uint8 STATE_DISCONNECTED  = 3~%~%uint8 state   # Camera state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cameras) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'camera_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraList>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraList
    (cl:cons ':cameras (cameras msg))
    (cl:cons ':camera_states (camera_states msg))
))
