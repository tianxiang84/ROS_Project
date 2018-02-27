; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude CalibrationStatus.msg.html

(cl:defclass <CalibrationStatus> (roslisp-msg-protocol:ros-message)
  ((calibration_plate_visible
    :reader calibration_plate_visible
    :initarg :calibration_plate_visible
    :type cl:boolean
    :initform cl:nil)
   (calibration_request_received
    :reader calibration_request_received
    :initarg :calibration_request_received
    :type cl:boolean
    :initform cl:nil)
   (calibration_plate_localized
    :reader calibration_plate_localized
    :initarg :calibration_plate_localized
    :type cl:boolean
    :initform cl:nil)
   (calibration_input_poses_received
    :reader calibration_input_poses_received
    :initarg :calibration_input_poses_received
    :type cl:boolean
    :initform cl:nil)
   (calibration_calculated
    :reader calibration_calculated
    :initarg :calibration_calculated
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CalibrationStatus (<CalibrationStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<CalibrationStatus> is deprecated: use im_pickit_msgs-msg:CalibrationStatus instead.")))

(cl:ensure-generic-function 'calibration_plate_visible-val :lambda-list '(m))
(cl:defmethod calibration_plate_visible-val ((m <CalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:calibration_plate_visible-val is deprecated.  Use im_pickit_msgs-msg:calibration_plate_visible instead.")
  (calibration_plate_visible m))

(cl:ensure-generic-function 'calibration_request_received-val :lambda-list '(m))
(cl:defmethod calibration_request_received-val ((m <CalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:calibration_request_received-val is deprecated.  Use im_pickit_msgs-msg:calibration_request_received instead.")
  (calibration_request_received m))

(cl:ensure-generic-function 'calibration_plate_localized-val :lambda-list '(m))
(cl:defmethod calibration_plate_localized-val ((m <CalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:calibration_plate_localized-val is deprecated.  Use im_pickit_msgs-msg:calibration_plate_localized instead.")
  (calibration_plate_localized m))

(cl:ensure-generic-function 'calibration_input_poses_received-val :lambda-list '(m))
(cl:defmethod calibration_input_poses_received-val ((m <CalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:calibration_input_poses_received-val is deprecated.  Use im_pickit_msgs-msg:calibration_input_poses_received instead.")
  (calibration_input_poses_received m))

(cl:ensure-generic-function 'calibration_calculated-val :lambda-list '(m))
(cl:defmethod calibration_calculated-val ((m <CalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:calibration_calculated-val is deprecated.  Use im_pickit_msgs-msg:calibration_calculated instead.")
  (calibration_calculated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationStatus>) ostream)
  "Serializes a message object of type '<CalibrationStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'calibration_plate_visible) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'calibration_request_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'calibration_plate_localized) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'calibration_input_poses_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'calibration_calculated) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationStatus>) istream)
  "Deserializes a message object of type '<CalibrationStatus>"
    (cl:setf (cl:slot-value msg 'calibration_plate_visible) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'calibration_request_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'calibration_plate_localized) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'calibration_input_poses_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'calibration_calculated) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationStatus>)))
  "Returns string type for a message object of type '<CalibrationStatus>"
  "im_pickit_msgs/CalibrationStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationStatus)))
  "Returns string type for a message object of type 'CalibrationStatus"
  "im_pickit_msgs/CalibrationStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationStatus>)))
  "Returns md5sum for a message object of type '<CalibrationStatus>"
  "eb9e08f442b346d90200848306f7f520")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationStatus)))
  "Returns md5sum for a message object of type 'CalibrationStatus"
  "eb9e08f442b346d90200848306f7f520")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationStatus>)))
  "Returns full string definition for message of type '<CalibrationStatus>"
  (cl:format cl:nil "## Copyright Pick-it NV 2017~%## This message contains Calibration status information  ##~%~%bool calibration_plate_visible~%bool calibration_request_received~%bool calibration_plate_localized~%bool calibration_input_poses_received~%~%bool calibration_calculated~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationStatus)))
  "Returns full string definition for message of type 'CalibrationStatus"
  (cl:format cl:nil "## Copyright Pick-it NV 2017~%## This message contains Calibration status information  ##~%~%bool calibration_plate_visible~%bool calibration_request_received~%bool calibration_plate_localized~%bool calibration_input_poses_received~%~%bool calibration_calculated~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationStatus
    (cl:cons ':calibration_plate_visible (calibration_plate_visible msg))
    (cl:cons ':calibration_request_received (calibration_request_received msg))
    (cl:cons ':calibration_plate_localized (calibration_plate_localized msg))
    (cl:cons ':calibration_input_poses_received (calibration_input_poses_received msg))
    (cl:cons ':calibration_calculated (calibration_calculated msg))
))
