; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude RoiStatus.msg.html

(cl:defclass <RoiStatus> (roslisp-msg-protocol:ros-message)
  ((roi_markers_visible
    :reader roi_markers_visible
    :initarg :roi_markers_visible
    :type cl:boolean
    :initform cl:nil)
   (roi_defined
    :reader roi_defined
    :initarg :roi_defined
    :type cl:boolean
    :initform cl:nil)
   (bg_points_defined
    :reader bg_points_defined
    :initarg :bg_points_defined
    :type cl:boolean
    :initform cl:nil)
   (bg_plane_defined
    :reader bg_plane_defined
    :initarg :bg_plane_defined
    :type cl:boolean
    :initform cl:nil)
   (bg_sphere_defined
    :reader bg_sphere_defined
    :initarg :bg_sphere_defined
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RoiStatus (<RoiStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoiStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoiStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<RoiStatus> is deprecated: use im_pickit_msgs-msg:RoiStatus instead.")))

(cl:ensure-generic-function 'roi_markers_visible-val :lambda-list '(m))
(cl:defmethod roi_markers_visible-val ((m <RoiStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:roi_markers_visible-val is deprecated.  Use im_pickit_msgs-msg:roi_markers_visible instead.")
  (roi_markers_visible m))

(cl:ensure-generic-function 'roi_defined-val :lambda-list '(m))
(cl:defmethod roi_defined-val ((m <RoiStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:roi_defined-val is deprecated.  Use im_pickit_msgs-msg:roi_defined instead.")
  (roi_defined m))

(cl:ensure-generic-function 'bg_points_defined-val :lambda-list '(m))
(cl:defmethod bg_points_defined-val ((m <RoiStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:bg_points_defined-val is deprecated.  Use im_pickit_msgs-msg:bg_points_defined instead.")
  (bg_points_defined m))

(cl:ensure-generic-function 'bg_plane_defined-val :lambda-list '(m))
(cl:defmethod bg_plane_defined-val ((m <RoiStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:bg_plane_defined-val is deprecated.  Use im_pickit_msgs-msg:bg_plane_defined instead.")
  (bg_plane_defined m))

(cl:ensure-generic-function 'bg_sphere_defined-val :lambda-list '(m))
(cl:defmethod bg_sphere_defined-val ((m <RoiStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:bg_sphere_defined-val is deprecated.  Use im_pickit_msgs-msg:bg_sphere_defined instead.")
  (bg_sphere_defined m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoiStatus>) ostream)
  "Serializes a message object of type '<RoiStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'roi_markers_visible) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'roi_defined) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bg_points_defined) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bg_plane_defined) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bg_sphere_defined) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoiStatus>) istream)
  "Deserializes a message object of type '<RoiStatus>"
    (cl:setf (cl:slot-value msg 'roi_markers_visible) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'roi_defined) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bg_points_defined) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bg_plane_defined) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bg_sphere_defined) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoiStatus>)))
  "Returns string type for a message object of type '<RoiStatus>"
  "im_pickit_msgs/RoiStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoiStatus)))
  "Returns string type for a message object of type 'RoiStatus"
  "im_pickit_msgs/RoiStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoiStatus>)))
  "Returns md5sum for a message object of type '<RoiStatus>"
  "15f99c44da3357bca53b85d90df3508d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoiStatus)))
  "Returns md5sum for a message object of type 'RoiStatus"
  "15f99c44da3357bca53b85d90df3508d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoiStatus>)))
  "Returns full string definition for message of type '<RoiStatus>"
  (cl:format cl:nil "## Copyright Pick-it 2017~%## This message contains ROI status information  ##~%~%bool roi_markers_visible~%bool roi_defined # TODO remove this flag and replace with service request~%~%bool bg_points_defined~%bool bg_plane_defined~%bool bg_sphere_defined~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoiStatus)))
  "Returns full string definition for message of type 'RoiStatus"
  (cl:format cl:nil "## Copyright Pick-it 2017~%## This message contains ROI status information  ##~%~%bool roi_markers_visible~%bool roi_defined # TODO remove this flag and replace with service request~%~%bool bg_points_defined~%bool bg_plane_defined~%bool bg_sphere_defined~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoiStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoiStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RoiStatus
    (cl:cons ':roi_markers_visible (roi_markers_visible msg))
    (cl:cons ':roi_defined (roi_defined msg))
    (cl:cons ':bg_points_defined (bg_points_defined msg))
    (cl:cons ':bg_plane_defined (bg_plane_defined msg))
    (cl:cons ':bg_sphere_defined (bg_sphere_defined msg))
))
