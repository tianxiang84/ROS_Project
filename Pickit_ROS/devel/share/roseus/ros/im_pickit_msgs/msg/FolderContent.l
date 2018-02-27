;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::FolderContent)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'FolderContent (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::FOLDERCONTENT")
  (make-package "IM_PICKIT_MSGS::FOLDERCONTENT"))

(in-package "ROS")
;;//! \htmlinclude FolderContent.msg.html


(defclass im_pickit_msgs::FolderContent
  :super ros::object
  :slots (_folder_name _folder_content ))

(defmethod im_pickit_msgs::FolderContent
  (:init
   (&key
    ((:folder_name __folder_name) "")
    ((:folder_content __folder_content) (let (r) (dotimes (i 0) (push (instance im_pickit_msgs::SubfolderContent :init) r)) r))
    )
   (send-super :init)
   (setq _folder_name (string __folder_name))
   (setq _folder_content __folder_content)
   self)
  (:folder_name
   (&optional __folder_name)
   (if __folder_name (setq _folder_name __folder_name)) _folder_name)
  (:folder_content
   (&rest __folder_content)
   (if (keywordp (car __folder_content))
       (send* _folder_content __folder_content)
     (progn
       (if __folder_content (setq _folder_content (car __folder_content)))
       _folder_content)))
  (:serialization-length
   ()
   (+
    ;; string _folder_name
    4 (length _folder_name)
    ;; im_pickit_msgs/SubfolderContent[] _folder_content
    (apply #'+ (send-all _folder_content :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _folder_name
       (write-long (length _folder_name) s) (princ _folder_name s)
     ;; im_pickit_msgs/SubfolderContent[] _folder_content
     (write-long (length _folder_content) s)
     (dolist (elem _folder_content)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _folder_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _folder_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; im_pickit_msgs/SubfolderContent[] _folder_content
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _folder_content (let (r) (dotimes (i n) (push (instance im_pickit_msgs::SubfolderContent :init) r)) r))
     (dolist (elem- _folder_content)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get im_pickit_msgs::FolderContent :md5sum-) "b930894bddbcdb7d52f4b6e2fa737db2")
(setf (get im_pickit_msgs::FolderContent :datatype-) "im_pickit_msgs/FolderContent")
(setf (get im_pickit_msgs::FolderContent :definition-)
      "## Copyright Intermodalics 2015
string                                  folder_name         ## This is the absolute path
im_pickit_msgs/SubfolderContent[]       folder_content

 
================================================================================
MSG: im_pickit_msgs/SubfolderContent
## Copyright Intermodalics 2014
string                  subfolder_name             ## This is the relative name
im_pickit_msgs/File[]   subfolder_files

================================================================================
MSG: im_pickit_msgs/File
## Copyright Intermodalics 2015
int32        file_id
string       file_name
bool         readonly
")



(provide :im_pickit_msgs/FolderContent "b930894bddbcdb7d52f4b6e2fa737db2")


