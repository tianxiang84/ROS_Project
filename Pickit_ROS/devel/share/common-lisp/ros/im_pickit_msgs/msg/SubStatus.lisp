; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude SubStatus.msg.html

(cl:defclass <SubStatus> (roslisp-msg-protocol:ros-message)
  ((substatus
    :reader substatus
    :initarg :substatus
    :type cl:fixnum
    :initform 0)
   (detail
    :reader detail
    :initarg :detail
    :type cl:string
    :initform ""))
)

(cl:defclass SubStatus (<SubStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<SubStatus> is deprecated: use im_pickit_msgs-msg:SubStatus instead.")))

(cl:ensure-generic-function 'substatus-val :lambda-list '(m))
(cl:defmethod substatus-val ((m <SubStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:substatus-val is deprecated.  Use im_pickit_msgs-msg:substatus instead.")
  (substatus m))

(cl:ensure-generic-function 'detail-val :lambda-list '(m))
(cl:defmethod detail-val ((m <SubStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:detail-val is deprecated.  Use im_pickit_msgs-msg:detail instead.")
  (detail m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubStatus>) ostream)
  "Serializes a message object of type '<SubStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'substatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'substatus)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detail))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubStatus>) istream)
  "Deserializes a message object of type '<SubStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'substatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'substatus)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detail) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detail) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubStatus>)))
  "Returns string type for a message object of type '<SubStatus>"
  "im_pickit_msgs/SubStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubStatus)))
  "Returns string type for a message object of type 'SubStatus"
  "im_pickit_msgs/SubStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubStatus>)))
  "Returns md5sum for a message object of type '<SubStatus>"
  "637c475b1be22ba7a5f49036bb64ff8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubStatus)))
  "Returns md5sum for a message object of type 'SubStatus"
  "637c475b1be22ba7a5f49036bb64ff8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubStatus>)))
  "Returns full string definition for message of type '<SubStatus>"
  (cl:format cl:nil "# Rejected object substatus:~%#  - StatusUnpickable (orange)~%#  - StatusInvalid (red)~%#  - StatusDiscarded (no marker)~%~%uint16 substatus~%string detail~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubStatus)))
  "Returns full string definition for message of type 'SubStatus"
  (cl:format cl:nil "# Rejected object substatus:~%#  - StatusUnpickable (orange)~%#  - StatusInvalid (red)~%#  - StatusDiscarded (no marker)~%~%uint16 substatus~%string detail~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubStatus>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'detail))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SubStatus
    (cl:cons ':substatus (substatus msg))
    (cl:cons ':detail (detail msg))
))
