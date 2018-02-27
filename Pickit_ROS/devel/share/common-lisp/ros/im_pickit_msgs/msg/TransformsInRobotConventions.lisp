; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude TransformsInRobotConventions.msg.html

(cl:defclass <TransformsInRobotConventions> (roslisp-msg-protocol:ros-message)
  ((frame_in_robot_conventions
    :reader frame_in_robot_conventions
    :initarg :frame_in_robot_conventions
    :type (cl:vector im_pickit_msgs-msg:PoseInRobotConvention)
   :initform (cl:make-array 0 :element-type 'im_pickit_msgs-msg:PoseInRobotConvention :initial-element (cl:make-instance 'im_pickit_msgs-msg:PoseInRobotConvention))))
)

(cl:defclass TransformsInRobotConventions (<TransformsInRobotConventions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformsInRobotConventions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformsInRobotConventions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<TransformsInRobotConventions> is deprecated: use im_pickit_msgs-msg:TransformsInRobotConventions instead.")))

(cl:ensure-generic-function 'frame_in_robot_conventions-val :lambda-list '(m))
(cl:defmethod frame_in_robot_conventions-val ((m <TransformsInRobotConventions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:frame_in_robot_conventions-val is deprecated.  Use im_pickit_msgs-msg:frame_in_robot_conventions instead.")
  (frame_in_robot_conventions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformsInRobotConventions>) ostream)
  "Serializes a message object of type '<TransformsInRobotConventions>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frame_in_robot_conventions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frame_in_robot_conventions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformsInRobotConventions>) istream)
  "Deserializes a message object of type '<TransformsInRobotConventions>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frame_in_robot_conventions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frame_in_robot_conventions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'im_pickit_msgs-msg:PoseInRobotConvention))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformsInRobotConventions>)))
  "Returns string type for a message object of type '<TransformsInRobotConventions>"
  "im_pickit_msgs/TransformsInRobotConventions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformsInRobotConventions)))
  "Returns string type for a message object of type 'TransformsInRobotConventions"
  "im_pickit_msgs/TransformsInRobotConventions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformsInRobotConventions>)))
  "Returns md5sum for a message object of type '<TransformsInRobotConventions>"
  "69b2ffe586af55f72b44278254a92d0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformsInRobotConventions)))
  "Returns md5sum for a message object of type 'TransformsInRobotConventions"
  "69b2ffe586af55f72b44278254a92d0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformsInRobotConventions>)))
  "Returns full string definition for message of type '<TransformsInRobotConventions>"
  (cl:format cl:nil "PoseInRobotConvention[] frame_in_robot_conventions~%~%================================================================================~%MSG: im_pickit_msgs/PoseInRobotConvention~%# Possible robot types:~%# - ABB     (Radians)~%# - FANUC   (Degrees)~%# - STAUBLI (Degrees)~%# - KUKA    (Degrees)~%# - UR      (Radians)~%~%string       robot_type~%float64[3]   position~%float64[4]   orientation~%string       orientation_unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformsInRobotConventions)))
  "Returns full string definition for message of type 'TransformsInRobotConventions"
  (cl:format cl:nil "PoseInRobotConvention[] frame_in_robot_conventions~%~%================================================================================~%MSG: im_pickit_msgs/PoseInRobotConvention~%# Possible robot types:~%# - ABB     (Radians)~%# - FANUC   (Degrees)~%# - STAUBLI (Degrees)~%# - KUKA    (Degrees)~%# - UR      (Radians)~%~%string       robot_type~%float64[3]   position~%float64[4]   orientation~%string       orientation_unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformsInRobotConventions>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frame_in_robot_conventions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformsInRobotConventions>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformsInRobotConventions
    (cl:cons ':frame_in_robot_conventions (frame_in_robot_conventions msg))
))
