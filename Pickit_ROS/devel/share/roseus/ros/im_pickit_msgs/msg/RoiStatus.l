;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::RoiStatus)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'RoiStatus (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::ROISTATUS")
  (make-package "IM_PICKIT_MSGS::ROISTATUS"))

(in-package "ROS")
;;//! \htmlinclude RoiStatus.msg.html


(defclass im_pickit_msgs::RoiStatus
  :super ros::object
  :slots (_roi_markers_visible _roi_defined _bg_points_defined _bg_plane_defined _bg_sphere_defined ))

(defmethod im_pickit_msgs::RoiStatus
  (:init
   (&key
    ((:roi_markers_visible __roi_markers_visible) nil)
    ((:roi_defined __roi_defined) nil)
    ((:bg_points_defined __bg_points_defined) nil)
    ((:bg_plane_defined __bg_plane_defined) nil)
    ((:bg_sphere_defined __bg_sphere_defined) nil)
    )
   (send-super :init)
   (setq _roi_markers_visible __roi_markers_visible)
   (setq _roi_defined __roi_defined)
   (setq _bg_points_defined __bg_points_defined)
   (setq _bg_plane_defined __bg_plane_defined)
   (setq _bg_sphere_defined __bg_sphere_defined)
   self)
  (:roi_markers_visible
   (&optional __roi_markers_visible)
   (if __roi_markers_visible (setq _roi_markers_visible __roi_markers_visible)) _roi_markers_visible)
  (:roi_defined
   (&optional __roi_defined)
   (if __roi_defined (setq _roi_defined __roi_defined)) _roi_defined)
  (:bg_points_defined
   (&optional __bg_points_defined)
   (if __bg_points_defined (setq _bg_points_defined __bg_points_defined)) _bg_points_defined)
  (:bg_plane_defined
   (&optional __bg_plane_defined)
   (if __bg_plane_defined (setq _bg_plane_defined __bg_plane_defined)) _bg_plane_defined)
  (:bg_sphere_defined
   (&optional __bg_sphere_defined)
   (if __bg_sphere_defined (setq _bg_sphere_defined __bg_sphere_defined)) _bg_sphere_defined)
  (:serialization-length
   ()
   (+
    ;; bool _roi_markers_visible
    1
    ;; bool _roi_defined
    1
    ;; bool _bg_points_defined
    1
    ;; bool _bg_plane_defined
    1
    ;; bool _bg_sphere_defined
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _roi_markers_visible
       (if _roi_markers_visible (write-byte -1 s) (write-byte 0 s))
     ;; bool _roi_defined
       (if _roi_defined (write-byte -1 s) (write-byte 0 s))
     ;; bool _bg_points_defined
       (if _bg_points_defined (write-byte -1 s) (write-byte 0 s))
     ;; bool _bg_plane_defined
       (if _bg_plane_defined (write-byte -1 s) (write-byte 0 s))
     ;; bool _bg_sphere_defined
       (if _bg_sphere_defined (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _roi_markers_visible
     (setq _roi_markers_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _roi_defined
     (setq _roi_defined (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bg_points_defined
     (setq _bg_points_defined (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bg_plane_defined
     (setq _bg_plane_defined (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bg_sphere_defined
     (setq _bg_sphere_defined (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get im_pickit_msgs::RoiStatus :md5sum-) "15f99c44da3357bca53b85d90df3508d")
(setf (get im_pickit_msgs::RoiStatus :datatype-) "im_pickit_msgs/RoiStatus")
(setf (get im_pickit_msgs::RoiStatus :definition-)
      "## Copyright Pick-it 2017
## This message contains ROI status information  ##

bool roi_markers_visible
bool roi_defined # TODO remove this flag and replace with service request

bool bg_points_defined
bool bg_plane_defined
bool bg_sphere_defined

")



(provide :im_pickit_msgs/RoiStatus "15f99c44da3357bca53b85d90df3508d")


