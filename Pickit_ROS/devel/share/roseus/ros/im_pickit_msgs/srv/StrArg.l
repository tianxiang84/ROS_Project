;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::StrArg)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'StrArg (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::STRARG")
  (make-package "IM_PICKIT_MSGS::STRARG"))
(unless (find-package "IM_PICKIT_MSGS::STRARGREQUEST")
  (make-package "IM_PICKIT_MSGS::STRARGREQUEST"))
(unless (find-package "IM_PICKIT_MSGS::STRARGRESPONSE")
  (make-package "IM_PICKIT_MSGS::STRARGRESPONSE"))

(in-package "ROS")





(defclass im_pickit_msgs::StrArgRequest
  :super ros::object
  :slots (_str ))

(defmethod im_pickit_msgs::StrArgRequest
  (:init
   (&key
    ((:str __str) "")
    )
   (send-super :init)
   (setq _str (string __str))
   self)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass im_pickit_msgs::StrArgResponse
  :super ros::object
  :slots (_success _message ))

(defmethod im_pickit_msgs::StrArgResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass im_pickit_msgs::StrArg
  :super ros::object
  :slots ())

(setf (get im_pickit_msgs::StrArg :md5sum-) "8682e79b6a8d3cc445497c38297309bb")
(setf (get im_pickit_msgs::StrArg :datatype-) "im_pickit_msgs/StrArg")
(setf (get im_pickit_msgs::StrArg :request) im_pickit_msgs::StrArgRequest)
(setf (get im_pickit_msgs::StrArg :response) im_pickit_msgs::StrArgResponse)

(defmethod im_pickit_msgs::StrArgRequest
  (:response () (instance im_pickit_msgs::StrArgResponse :init)))

(setf (get im_pickit_msgs::StrArgRequest :md5sum-) "8682e79b6a8d3cc445497c38297309bb")
(setf (get im_pickit_msgs::StrArgRequest :datatype-) "im_pickit_msgs/StrArgRequest")
(setf (get im_pickit_msgs::StrArgRequest :definition-)
      "string    str
---
bool      success
string    message

")

(setf (get im_pickit_msgs::StrArgResponse :md5sum-) "8682e79b6a8d3cc445497c38297309bb")
(setf (get im_pickit_msgs::StrArgResponse :datatype-) "im_pickit_msgs/StrArgResponse")
(setf (get im_pickit_msgs::StrArgResponse :definition-)
      "string    str
---
bool      success
string    message

")



(provide :im_pickit_msgs/StrArg "8682e79b6a8d3cc445497c38297309bb")


