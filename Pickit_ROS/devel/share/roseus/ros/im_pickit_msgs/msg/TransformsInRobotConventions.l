;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::TransformsInRobotConventions)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'TransformsInRobotConventions (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::TRANSFORMSINROBOTCONVENTIONS")
  (make-package "IM_PICKIT_MSGS::TRANSFORMSINROBOTCONVENTIONS"))

(in-package "ROS")
;;//! \htmlinclude TransformsInRobotConventions.msg.html


(defclass im_pickit_msgs::TransformsInRobotConventions
  :super ros::object
  :slots (_frame_in_robot_conventions ))

(defmethod im_pickit_msgs::TransformsInRobotConventions
  (:init
   (&key
    ((:frame_in_robot_conventions __frame_in_robot_conventions) (let (r) (dotimes (i 0) (push (instance im_pickit_msgs::PoseInRobotConvention :init) r)) r))
    )
   (send-super :init)
   (setq _frame_in_robot_conventions __frame_in_robot_conventions)
   self)
  (:frame_in_robot_conventions
   (&rest __frame_in_robot_conventions)
   (if (keywordp (car __frame_in_robot_conventions))
       (send* _frame_in_robot_conventions __frame_in_robot_conventions)
     (progn
       (if __frame_in_robot_conventions (setq _frame_in_robot_conventions (car __frame_in_robot_conventions)))
       _frame_in_robot_conventions)))
  (:serialization-length
   ()
   (+
    ;; im_pickit_msgs/PoseInRobotConvention[] _frame_in_robot_conventions
    (apply #'+ (send-all _frame_in_robot_conventions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; im_pickit_msgs/PoseInRobotConvention[] _frame_in_robot_conventions
     (write-long (length _frame_in_robot_conventions) s)
     (dolist (elem _frame_in_robot_conventions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; im_pickit_msgs/PoseInRobotConvention[] _frame_in_robot_conventions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frame_in_robot_conventions (let (r) (dotimes (i n) (push (instance im_pickit_msgs::PoseInRobotConvention :init) r)) r))
     (dolist (elem- _frame_in_robot_conventions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get im_pickit_msgs::TransformsInRobotConventions :md5sum-) "69b2ffe586af55f72b44278254a92d0d")
(setf (get im_pickit_msgs::TransformsInRobotConventions :datatype-) "im_pickit_msgs/TransformsInRobotConventions")
(setf (get im_pickit_msgs::TransformsInRobotConventions :definition-)
      "PoseInRobotConvention[] frame_in_robot_conventions

================================================================================
MSG: im_pickit_msgs/PoseInRobotConvention
# Possible robot types:
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



(provide :im_pickit_msgs/TransformsInRobotConventions "69b2ffe586af55f72b44278254a92d0d")


