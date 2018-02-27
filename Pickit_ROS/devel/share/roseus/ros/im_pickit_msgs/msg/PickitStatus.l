;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::PickitStatus)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'PickitStatus (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::PICKITSTATUS")
  (make-package "IM_PICKIT_MSGS::PICKITSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PickitStatus.msg.html


(defclass im_pickit_msgs::PickitStatus
  :super ros::object
  :slots (_state _setup_file _product_file _setup_changed _product_changed ))

(defmethod im_pickit_msgs::PickitStatus
  (:init
   (&key
    ((:state __state) "")
    ((:setup_file __setup_file) "")
    ((:product_file __product_file) "")
    ((:setup_changed __setup_changed) nil)
    ((:product_changed __product_changed) nil)
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _setup_file (string __setup_file))
   (setq _product_file (string __product_file))
   (setq _setup_changed __setup_changed)
   (setq _product_changed __product_changed)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:setup_file
   (&optional __setup_file)
   (if __setup_file (setq _setup_file __setup_file)) _setup_file)
  (:product_file
   (&optional __product_file)
   (if __product_file (setq _product_file __product_file)) _product_file)
  (:setup_changed
   (&optional __setup_changed)
   (if __setup_changed (setq _setup_changed __setup_changed)) _setup_changed)
  (:product_changed
   (&optional __product_changed)
   (if __product_changed (setq _product_changed __product_changed)) _product_changed)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; string _setup_file
    4 (length _setup_file)
    ;; string _product_file
    4 (length _product_file)
    ;; bool _setup_changed
    1
    ;; bool _product_changed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _setup_file
       (write-long (length _setup_file) s) (princ _setup_file s)
     ;; string _product_file
       (write-long (length _product_file) s) (princ _product_file s)
     ;; bool _setup_changed
       (if _setup_changed (write-byte -1 s) (write-byte 0 s))
     ;; bool _product_changed
       (if _product_changed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _setup_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _setup_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _product_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _product_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _setup_changed
     (setq _setup_changed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _product_changed
     (setq _product_changed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get im_pickit_msgs::PickitStatus :md5sum-) "e66b3a740a3e3363c03cbef9c13ce9f6")
(setf (get im_pickit_msgs::PickitStatus :datatype-) "im_pickit_msgs/PickitStatus")
(setf (get im_pickit_msgs::PickitStatus :definition-)
      "## Copyright Intermodalics 2014
## This message contains Pick-it status information  ##

string state

string setup_file
string product_file

bool setup_changed
bool product_changed

")



(provide :im_pickit_msgs/PickitStatus "e66b3a740a3e3363c03cbef9c13ce9f6")


