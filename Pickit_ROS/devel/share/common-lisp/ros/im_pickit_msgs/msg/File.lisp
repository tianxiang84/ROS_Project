; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude File.msg.html

(cl:defclass <File> (roslisp-msg-protocol:ros-message)
  ((file_id
    :reader file_id
    :initarg :file_id
    :type cl:integer
    :initform 0)
   (file_name
    :reader file_name
    :initarg :file_name
    :type cl:string
    :initform "")
   (readonly
    :reader readonly
    :initarg :readonly
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass File (<File>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <File>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'File)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<File> is deprecated: use im_pickit_msgs-msg:File instead.")))

(cl:ensure-generic-function 'file_id-val :lambda-list '(m))
(cl:defmethod file_id-val ((m <File>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:file_id-val is deprecated.  Use im_pickit_msgs-msg:file_id instead.")
  (file_id m))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <File>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:file_name-val is deprecated.  Use im_pickit_msgs-msg:file_name instead.")
  (file_name m))

(cl:ensure-generic-function 'readonly-val :lambda-list '(m))
(cl:defmethod readonly-val ((m <File>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:readonly-val is deprecated.  Use im_pickit_msgs-msg:readonly instead.")
  (readonly m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <File>) ostream)
  "Serializes a message object of type '<File>"
  (cl:let* ((signed (cl:slot-value msg 'file_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'readonly) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <File>) istream)
  "Deserializes a message object of type '<File>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'readonly) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<File>)))
  "Returns string type for a message object of type '<File>"
  "im_pickit_msgs/File")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'File)))
  "Returns string type for a message object of type 'File"
  "im_pickit_msgs/File")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<File>)))
  "Returns md5sum for a message object of type '<File>"
  "4c4f24261c48aaf171f33bc1655b7b8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'File)))
  "Returns md5sum for a message object of type 'File"
  "4c4f24261c48aaf171f33bc1655b7b8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<File>)))
  "Returns full string definition for message of type '<File>"
  (cl:format cl:nil "## Copyright Intermodalics 2015~%int32        file_id~%string       file_name~%bool         readonly~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'File)))
  "Returns full string definition for message of type 'File"
  (cl:format cl:nil "## Copyright Intermodalics 2015~%int32        file_id~%string       file_name~%bool         readonly~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <File>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'file_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <File>))
  "Converts a ROS message object to a list"
  (cl:list 'File
    (cl:cons ':file_id (file_id msg))
    (cl:cons ':file_name (file_name msg))
    (cl:cons ':readonly (readonly msg))
))
