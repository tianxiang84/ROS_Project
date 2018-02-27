;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::PoseInRobotConvention)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'PoseInRobotConvention (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::POSEINROBOTCONVENTION")
  (make-package "IM_PICKIT_MSGS::POSEINROBOTCONVENTION"))

(in-package "ROS")
;;//! \htmlinclude PoseInRobotConvention.msg.html


(defclass im_pickit_msgs::PoseInRobotConvention
  :super ros::object
  :slots (_robot_type _position _orientation _orientation_unit ))

(defmethod im_pickit_msgs::PoseInRobotConvention
  (:init
   (&key
    ((:robot_type __robot_type) "")
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:orientation __orientation) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:orientation_unit __orientation_unit) "")
    )
   (send-super :init)
   (setq _robot_type (string __robot_type))
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _orientation_unit (string __orientation_unit))
   self)
  (:robot_type
   (&optional __robot_type)
   (if __robot_type (setq _robot_type __robot_type)) _robot_type)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:orientation_unit
   (&optional __orientation_unit)
   (if __orientation_unit (setq _orientation_unit __orientation_unit)) _orientation_unit)
  (:serialization-length
   ()
   (+
    ;; string _robot_type
    4 (length _robot_type)
    ;; float64[3] _position
    (* 8    3)
    ;; float64[4] _orientation
    (* 8    4)
    ;; string _orientation_unit
    4 (length _orientation_unit)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_type
       (write-long (length _robot_type) s) (princ _robot_type s)
     ;; float64[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[4] _orientation
     (dotimes (i 4)
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _orientation_unit
       (write-long (length _orientation_unit) s) (princ _orientation_unit s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[4] _orientation
   (dotimes (i (length _orientation))
     (setf (elt _orientation i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; string _orientation_unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _orientation_unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get im_pickit_msgs::PoseInRobotConvention :md5sum-) "549652ee550f87af479cfa70e3398398")
(setf (get im_pickit_msgs::PoseInRobotConvention :datatype-) "im_pickit_msgs/PoseInRobotConvention")
(setf (get im_pickit_msgs::PoseInRobotConvention :definition-)
      "# Possible robot types:
# - ABB     (Radians)
# - FANUC   (Degrees)
# - STAUBLI (Degrees)
# - KUKA    (Degrees)
# - UR      (Radians)

string       robot_type
float64[3]   position
float64[4]   orientation
string       orientation_unit

")



(provide :im_pickit_msgs/PoseInRobotConvention "549652ee550f87af479cfa70e3398398")


