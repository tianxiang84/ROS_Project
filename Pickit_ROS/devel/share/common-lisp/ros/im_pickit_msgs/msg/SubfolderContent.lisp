; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude SubfolderContent.msg.html

(cl:defclass <SubfolderContent> (roslisp-msg-protocol:ros-message)
  ((subfolder_name
    :reader subfolder_name
    :initarg :subfolder_name
    :type cl:string
    :initform "")
   (subfolder_files
    :reader subfolder_files
    :initarg :subfolder_files
    :type (cl:vector im_pickit_msgs-msg:File)
   :initform (cl:make-array 0 :element-type 'im_pickit_msgs-msg:File :initial-element (cl:make-instance 'im_pickit_msgs-msg:File))))
)

(cl:defclass SubfolderContent (<SubfolderContent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubfolderContent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubfolderContent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<SubfolderContent> is deprecated: use im_pickit_msgs-msg:SubfolderContent instead.")))

(cl:ensure-generic-function 'subfolder_name-val :lambda-list '(m))
(cl:defmethod subfolder_name-val ((m <SubfolderContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:subfolder_name-val is deprecated.  Use im_pickit_msgs-msg:subfolder_name instead.")
  (subfolder_name m))

(cl:ensure-generic-function 'subfolder_files-val :lambda-list '(m))
(cl:defmethod subfolder_files-val ((m <SubfolderContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:subfolder_files-val is deprecated.  Use im_pickit_msgs-msg:subfolder_files instead.")
  (subfolder_files m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubfolderContent>) ostream)
  "Serializes a message object of type '<SubfolderContent>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subfolder_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subfolder_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subfolder_files))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'subfolder_files))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubfolderContent>) istream)
  "Deserializes a message object of type '<SubfolderContent>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subfolder_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subfolder_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subfolder_files) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subfolder_files)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'im_pickit_msgs-msg:File))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubfolderContent>)))
  "Returns string type for a message object of type '<SubfolderContent>"
  "im_pickit_msgs/SubfolderContent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubfolderContent)))
  "Returns string type for a message object of type 'SubfolderContent"
  "im_pickit_msgs/SubfolderContent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubfolderContent>)))
  "Returns md5sum for a message object of type '<SubfolderContent>"
  "e61ad7c13c96906f44de1e72d7cf413f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubfolderContent)))
  "Returns md5sum for a message object of type 'SubfolderContent"
  "e61ad7c13c96906f44de1e72d7cf413f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubfolderContent>)))
  "Returns full string definition for message of type '<SubfolderContent>"
  (cl:format cl:nil "## Copyright Intermodalics 2014~%string                  subfolder_name             ## This is the relative name~%im_pickit_msgs/File[]   subfolder_files~%~%================================================================================~%MSG: im_pickit_msgs/File~%## Copyright Intermodalics 2015~%int32        file_id~%string       file_name~%bool         readonly~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubfolderContent)))
  "Returns full string definition for message of type 'SubfolderContent"
  (cl:format cl:nil "## Copyright Intermodalics 2014~%string                  subfolder_name             ## This is the relative name~%im_pickit_msgs/File[]   subfolder_files~%~%================================================================================~%MSG: im_pickit_msgs/File~%## Copyright Intermodalics 2015~%int32        file_id~%string       file_name~%bool         readonly~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubfolderContent>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'subfolder_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subfolder_files) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubfolderContent>))
  "Converts a ROS message object to a list"
  (cl:list 'SubfolderContent
    (cl:cons ':subfolder_name (subfolder_name msg))
    (cl:cons ':subfolder_files (subfolder_files msg))
))
