; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude FolderContent.msg.html

(cl:defclass <FolderContent> (roslisp-msg-protocol:ros-message)
  ((folder_name
    :reader folder_name
    :initarg :folder_name
    :type cl:string
    :initform "")
   (folder_content
    :reader folder_content
    :initarg :folder_content
    :type (cl:vector im_pickit_msgs-msg:SubfolderContent)
   :initform (cl:make-array 0 :element-type 'im_pickit_msgs-msg:SubfolderContent :initial-element (cl:make-instance 'im_pickit_msgs-msg:SubfolderContent))))
)

(cl:defclass FolderContent (<FolderContent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FolderContent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FolderContent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<FolderContent> is deprecated: use im_pickit_msgs-msg:FolderContent instead.")))

(cl:ensure-generic-function 'folder_name-val :lambda-list '(m))
(cl:defmethod folder_name-val ((m <FolderContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:folder_name-val is deprecated.  Use im_pickit_msgs-msg:folder_name instead.")
  (folder_name m))

(cl:ensure-generic-function 'folder_content-val :lambda-list '(m))
(cl:defmethod folder_content-val ((m <FolderContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:folder_content-val is deprecated.  Use im_pickit_msgs-msg:folder_content instead.")
  (folder_content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FolderContent>) ostream)
  "Serializes a message object of type '<FolderContent>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'folder_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'folder_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'folder_content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'folder_content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FolderContent>) istream)
  "Deserializes a message object of type '<FolderContent>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'folder_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'folder_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'folder_content) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'folder_content)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'im_pickit_msgs-msg:SubfolderContent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FolderContent>)))
  "Returns string type for a message object of type '<FolderContent>"
  "im_pickit_msgs/FolderContent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FolderContent)))
  "Returns string type for a message object of type 'FolderContent"
  "im_pickit_msgs/FolderContent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FolderContent>)))
  "Returns md5sum for a message object of type '<FolderContent>"
  "b930894bddbcdb7d52f4b6e2fa737db2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FolderContent)))
  "Returns md5sum for a message object of type 'FolderContent"
  "b930894bddbcdb7d52f4b6e2fa737db2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FolderContent>)))
  "Returns full string definition for message of type '<FolderContent>"
  (cl:format cl:nil "## Copyright Intermodalics 2015~%string                                  folder_name         ## This is the absolute path~%im_pickit_msgs/SubfolderContent[]       folder_content~%~% ~%================================================================================~%MSG: im_pickit_msgs/SubfolderContent~%## Copyright Intermodalics 2014~%string                  subfolder_name             ## This is the relative name~%im_pickit_msgs/File[]   subfolder_files~%~%================================================================================~%MSG: im_pickit_msgs/File~%## Copyright Intermodalics 2015~%int32        file_id~%string       file_name~%bool         readonly~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FolderContent)))
  "Returns full string definition for message of type 'FolderContent"
  (cl:format cl:nil "## Copyright Intermodalics 2015~%string                                  folder_name         ## This is the absolute path~%im_pickit_msgs/SubfolderContent[]       folder_content~%~% ~%================================================================================~%MSG: im_pickit_msgs/SubfolderContent~%## Copyright Intermodalics 2014~%string                  subfolder_name             ## This is the relative name~%im_pickit_msgs/File[]   subfolder_files~%~%================================================================================~%MSG: im_pickit_msgs/File~%## Copyright Intermodalics 2015~%int32        file_id~%string       file_name~%bool         readonly~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FolderContent>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'folder_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'folder_content) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FolderContent>))
  "Converts a ROS message object to a list"
  (cl:list 'FolderContent
    (cl:cons ':folder_name (folder_name msg))
    (cl:cons ':folder_content (folder_content msg))
))
