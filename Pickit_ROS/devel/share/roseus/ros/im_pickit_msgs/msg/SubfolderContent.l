;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::SubfolderContent)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'SubfolderContent (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::SUBFOLDERCONTENT")
  (make-package "IM_PICKIT_MSGS::SUBFOLDERCONTENT"))

(in-package "ROS")
;;//! \htmlinclude SubfolderContent.msg.html


(defclass im_pickit_msgs::SubfolderContent
  :super ros::object
  :slots (_subfolder_name _subfolder_files ))

(defmethod im_pickit_msgs::SubfolderContent
  (:init
   (&key
    ((:subfolder_name __subfolder_name) "")
    ((:subfolder_files __subfolder_files) (let (r) (dotimes (i 0) (push (instance im_pickit_msgs::File :init) r)) r))
    )
   (send-super :init)
   (setq _subfolder_name (string __subfolder_name))
   (setq _subfolder_files __subfolder_files)
   self)
  (:subfolder_name
   (&optional __subfolder_name)
   (if __subfolder_name (setq _subfolder_name __subfolder_name)) _subfolder_name)
  (:subfolder_files
   (&rest __subfolder_files)
   (if (keywordp (car __subfolder_files))
       (send* _subfolder_files __subfolder_files)
     (progn
       (if __subfolder_files (setq _subfolder_files (car __subfolder_files)))
       _subfolder_files)))
  (:serialization-length
   ()
   (+
    ;; string _subfolder_name
    4 (length _subfolder_name)
    ;; im_pickit_msgs/File[] _subfolder_files
    (apply #'+ (send-all _subfolder_files :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subfolder_name
       (write-long (length _subfolder_name) s) (princ _subfolder_name s)
     ;; im_pickit_msgs/File[] _subfolder_files
     (write-long (length _subfolder_files) s)
     (dolist (elem _subfolder_files)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subfolder_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subfolder_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; im_pickit_msgs/File[] _subfolder_files
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _subfolder_files (let (r) (dotimes (i n) (push (instance im_pickit_msgs::File :init) r)) r))
     (dolist (elem- _subfolder_files)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get im_pickit_msgs::SubfolderContent :md5sum-) "e61ad7c13c96906f44de1e72d7cf413f")
(setf (get im_pickit_msgs::SubfolderContent :datatype-) "im_pickit_msgs/SubfolderContent")
(setf (get im_pickit_msgs::SubfolderContent :definition-)
      "## Copyright Intermodalics 2014
string                  subfolder_name             ## This is the relative name
im_pickit_msgs/File[]   subfolder_files

================================================================================
MSG: im_pickit_msgs/File
## Copyright Intermodalics 2015
int32        file_id
string       file_name
bool         readonly
")



(provide :im_pickit_msgs/SubfolderContent "e61ad7c13c96906f44de1e72d7cf413f")


