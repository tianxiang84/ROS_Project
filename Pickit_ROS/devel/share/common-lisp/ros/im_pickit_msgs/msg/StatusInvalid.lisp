; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude StatusInvalid.msg.html

(cl:defclass <StatusInvalid> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StatusInvalid (<StatusInvalid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusInvalid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusInvalid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<StatusInvalid> is deprecated: use im_pickit_msgs-msg:StatusInvalid instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StatusInvalid>)))
    "Constants for message type '<StatusInvalid>"
  '((:CATEGORY . INVALID)
    (:UNRELIABLE_3D_SCENE_COVERAGE_TOO_LOW . 100)
    (:UNRELIABLE_2D_SCENE_COVERAGE_TOO_LOW . 101)
    (:UNRELIABLE_3D_MODEL_COVERAGE_TOO_LOW . 102)
    (:UNRELIABLE_2D_MODEL_CONTOUR_COVERAGE_TOO_LOW . 103)
    (:UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_LOW . 104)
    (:UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_HIGH . 105)
    (:UNRELIABLE_MISALIGNED_X_AXIS . 200)
    (:UNRELIABLE_MISALIGNED_Y_AXIS . 201)
    (:WRONG_SIZE_SMALLER_THAN_X_MIN . 300)
    (:WRONG_SIZE_LARGER_THAN_X_MAX . 301)
    (:WRONG_SIZE_SMALLER_THAN_Y_MIN . 302)
    (:WRONG_SIZE_LARGER_THAN_Y_MAX . 303)
    (:WRONG_SIZE_SMALLER_THAN_Z_MIN . 304)
    (:WRONG_SIZE_LARGER_THAN_Z_MAX . 305)
    (:WRONG_SIZE_SMALLER_THAN_MIN_OBJECT_POINTS . 306)
    (:WRONG_SIZE_LARGER_THAN_MAX_OBJECT_POINTS . 307)
    (:WRONG_SURFACE_SIDE_EXTERNAL . 400)
    (:WRONG_SURFACE_SIDE_INTERNAL . 401)
    (:IN_PREVIOUS_IMAGE . 500))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StatusInvalid)))
    "Constants for message type 'StatusInvalid"
  '((:CATEGORY . INVALID)
    (:UNRELIABLE_3D_SCENE_COVERAGE_TOO_LOW . 100)
    (:UNRELIABLE_2D_SCENE_COVERAGE_TOO_LOW . 101)
    (:UNRELIABLE_3D_MODEL_COVERAGE_TOO_LOW . 102)
    (:UNRELIABLE_2D_MODEL_CONTOUR_COVERAGE_TOO_LOW . 103)
    (:UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_LOW . 104)
    (:UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_HIGH . 105)
    (:UNRELIABLE_MISALIGNED_X_AXIS . 200)
    (:UNRELIABLE_MISALIGNED_Y_AXIS . 201)
    (:WRONG_SIZE_SMALLER_THAN_X_MIN . 300)
    (:WRONG_SIZE_LARGER_THAN_X_MAX . 301)
    (:WRONG_SIZE_SMALLER_THAN_Y_MIN . 302)
    (:WRONG_SIZE_LARGER_THAN_Y_MAX . 303)
    (:WRONG_SIZE_SMALLER_THAN_Z_MIN . 304)
    (:WRONG_SIZE_LARGER_THAN_Z_MAX . 305)
    (:WRONG_SIZE_SMALLER_THAN_MIN_OBJECT_POINTS . 306)
    (:WRONG_SIZE_LARGER_THAN_MAX_OBJECT_POINTS . 307)
    (:WRONG_SURFACE_SIDE_EXTERNAL . 400)
    (:WRONG_SURFACE_SIDE_INTERNAL . 401)
    (:IN_PREVIOUS_IMAGE . 500))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusInvalid>) ostream)
  "Serializes a message object of type '<StatusInvalid>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusInvalid>) istream)
  "Deserializes a message object of type '<StatusInvalid>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusInvalid>)))
  "Returns string type for a message object of type '<StatusInvalid>"
  "im_pickit_msgs/StatusInvalid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusInvalid)))
  "Returns string type for a message object of type 'StatusInvalid"
  "im_pickit_msgs/StatusInvalid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusInvalid>)))
  "Returns md5sum for a message object of type '<StatusInvalid>"
  "de376df19f3bac290330f837647f3728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusInvalid)))
  "Returns md5sum for a message object of type 'StatusInvalid"
  "de376df19f3bac290330f837647f3728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusInvalid>)))
  "Returns full string definition for message of type '<StatusInvalid>"
  (cl:format cl:nil "# These objects (100 <= status <= 999)~%# will get a red colored visualization marker.~%~%string CATEGORY = INVALID~%~%### Enums:~%~%uint16 UNRELIABLE_3D_SCENE_COVERAGE_TOO_LOW = 100~%uint16 UNRELIABLE_2D_SCENE_COVERAGE_TOO_LOW = 101~%uint16 UNRELIABLE_3D_MODEL_COVERAGE_TOO_LOW = 102~%uint16 UNRELIABLE_2D_MODEL_CONTOUR_COVERAGE_TOO_LOW = 103~%uint16 UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_LOW = 104~%uint16 UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_HIGH = 105~%~%uint16 UNRELIABLE_MISALIGNED_X_AXIS = 200~%uint16 UNRELIABLE_MISALIGNED_Y_AXIS = 201~%~%uint16 WRONG_SIZE_SMALLER_THAN_X_MIN = 300~%uint16 WRONG_SIZE_LARGER_THAN_X_MAX = 301~%uint16 WRONG_SIZE_SMALLER_THAN_Y_MIN = 302~%uint16 WRONG_SIZE_LARGER_THAN_Y_MAX = 303~%uint16 WRONG_SIZE_SMALLER_THAN_Z_MIN = 304~%uint16 WRONG_SIZE_LARGER_THAN_Z_MAX = 305~%uint16 WRONG_SIZE_SMALLER_THAN_MIN_OBJECT_POINTS = 306~%uint16 WRONG_SIZE_LARGER_THAN_MAX_OBJECT_POINTS = 307~%~%uint16 WRONG_SURFACE_SIDE_EXTERNAL = 400~%uint16 WRONG_SURFACE_SIDE_INTERNAL = 401~%~%uint16 IN_PREVIOUS_IMAGE = 500~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusInvalid)))
  "Returns full string definition for message of type 'StatusInvalid"
  (cl:format cl:nil "# These objects (100 <= status <= 999)~%# will get a red colored visualization marker.~%~%string CATEGORY = INVALID~%~%### Enums:~%~%uint16 UNRELIABLE_3D_SCENE_COVERAGE_TOO_LOW = 100~%uint16 UNRELIABLE_2D_SCENE_COVERAGE_TOO_LOW = 101~%uint16 UNRELIABLE_3D_MODEL_COVERAGE_TOO_LOW = 102~%uint16 UNRELIABLE_2D_MODEL_CONTOUR_COVERAGE_TOO_LOW = 103~%uint16 UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_LOW = 104~%uint16 UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_HIGH = 105~%~%uint16 UNRELIABLE_MISALIGNED_X_AXIS = 200~%uint16 UNRELIABLE_MISALIGNED_Y_AXIS = 201~%~%uint16 WRONG_SIZE_SMALLER_THAN_X_MIN = 300~%uint16 WRONG_SIZE_LARGER_THAN_X_MAX = 301~%uint16 WRONG_SIZE_SMALLER_THAN_Y_MIN = 302~%uint16 WRONG_SIZE_LARGER_THAN_Y_MAX = 303~%uint16 WRONG_SIZE_SMALLER_THAN_Z_MIN = 304~%uint16 WRONG_SIZE_LARGER_THAN_Z_MAX = 305~%uint16 WRONG_SIZE_SMALLER_THAN_MIN_OBJECT_POINTS = 306~%uint16 WRONG_SIZE_LARGER_THAN_MAX_OBJECT_POINTS = 307~%~%uint16 WRONG_SURFACE_SIDE_EXTERNAL = 400~%uint16 WRONG_SURFACE_SIDE_INTERNAL = 401~%~%uint16 IN_PREVIOUS_IMAGE = 500~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusInvalid>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusInvalid>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusInvalid
))
