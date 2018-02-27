// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObjectArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.content = null;
      this.encoder_stamp = null;
      this.robot_to_camera_tf = null;
      this.camera_to_reference_tf = null;
      this.cloud_capturing_duration = null;
      this.clustering_method = null;
      this.n_rejected_clusters = null;
      this.clustering_duration = null;
      this.calculation_time = null;
      this.n_valid_objects = null;
      this.n_rejected_objects = null;
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('content')) {
        this.content = initObj.content
      }
      else {
        this.content = 0;
      }
      if (initObj.hasOwnProperty('encoder_stamp')) {
        this.encoder_stamp = initObj.encoder_stamp
      }
      else {
        this.encoder_stamp = 0;
      }
      if (initObj.hasOwnProperty('robot_to_camera_tf')) {
        this.robot_to_camera_tf = initObj.robot_to_camera_tf
      }
      else {
        this.robot_to_camera_tf = new geometry_msgs.msg.TransformStamped();
      }
      if (initObj.hasOwnProperty('camera_to_reference_tf')) {
        this.camera_to_reference_tf = initObj.camera_to_reference_tf
      }
      else {
        this.camera_to_reference_tf = new geometry_msgs.msg.TransformStamped();
      }
      if (initObj.hasOwnProperty('cloud_capturing_duration')) {
        this.cloud_capturing_duration = initObj.cloud_capturing_duration
      }
      else {
        this.cloud_capturing_duration = 0.0;
      }
      if (initObj.hasOwnProperty('clustering_method')) {
        this.clustering_method = initObj.clustering_method
      }
      else {
        this.clustering_method = 0;
      }
      if (initObj.hasOwnProperty('n_rejected_clusters')) {
        this.n_rejected_clusters = initObj.n_rejected_clusters
      }
      else {
        this.n_rejected_clusters = 0;
      }
      if (initObj.hasOwnProperty('clustering_duration')) {
        this.clustering_duration = initObj.clustering_duration
      }
      else {
        this.clustering_duration = 0.0;
      }
      if (initObj.hasOwnProperty('calculation_time')) {
        this.calculation_time = initObj.calculation_time
      }
      else {
        this.calculation_time = 0.0;
      }
      if (initObj.hasOwnProperty('n_valid_objects')) {
        this.n_valid_objects = initObj.n_valid_objects
      }
      else {
        this.n_valid_objects = 0;
      }
      if (initObj.hasOwnProperty('n_rejected_objects')) {
        this.n_rejected_objects = initObj.n_rejected_objects
      }
      else {
        this.n_rejected_objects = 0;
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [content]
    bufferOffset = _serializer.uint8(obj.content, buffer, bufferOffset);
    // Serialize message field [encoder_stamp]
    bufferOffset = _serializer.uint32(obj.encoder_stamp, buffer, bufferOffset);
    // Serialize message field [robot_to_camera_tf]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.robot_to_camera_tf, buffer, bufferOffset);
    // Serialize message field [camera_to_reference_tf]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.camera_to_reference_tf, buffer, bufferOffset);
    // Serialize message field [cloud_capturing_duration]
    bufferOffset = _serializer.float64(obj.cloud_capturing_duration, buffer, bufferOffset);
    // Serialize message field [clustering_method]
    bufferOffset = _serializer.uint8(obj.clustering_method, buffer, bufferOffset);
    // Serialize message field [n_rejected_clusters]
    bufferOffset = _serializer.uint16(obj.n_rejected_clusters, buffer, bufferOffset);
    // Serialize message field [clustering_duration]
    bufferOffset = _serializer.float64(obj.clustering_duration, buffer, bufferOffset);
    // Serialize message field [calculation_time]
    bufferOffset = _serializer.float64(obj.calculation_time, buffer, bufferOffset);
    // Serialize message field [n_valid_objects]
    bufferOffset = _serializer.uint16(obj.n_valid_objects, buffer, bufferOffset);
    // Serialize message field [n_rejected_objects]
    bufferOffset = _serializer.uint16(obj.n_rejected_objects, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = Object.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectArray
    let len;
    let data = new ObjectArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [content]
    data.content = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [encoder_stamp]
    data.encoder_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [robot_to_camera_tf]
    data.robot_to_camera_tf = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_to_reference_tf]
    data.camera_to_reference_tf = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [cloud_capturing_duration]
    data.cloud_capturing_duration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [clustering_method]
    data.clustering_method = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [n_rejected_clusters]
    data.n_rejected_clusters = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [clustering_duration]
    data.clustering_duration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [calculation_time]
    data.calculation_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [n_valid_objects]
    data.n_valid_objects = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [n_rejected_objects]
    data.n_rejected_objects = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = Object.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.robot_to_camera_tf);
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.camera_to_reference_tf);
    object.objects.forEach((val) => {
      length += Object.getMessageSize(val);
    });
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/ObjectArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '204d3d08d5381f80541e760fbffe322f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Copyright Intermodalics 2014
    ## This message contains all objects found by the last Pick-it run ##
    
    # Origin of the msg content
    uint8 NEW_OBJECT_DETECTION = 2
    uint8 RESET = 0
    
    # Clustering methods
    uint8 NO_CLUSTERING = 10
    uint8 DISTANCE_BASED_CLUSTERING = 11
    uint8 NORMAL_BASED_CLUSTERING = 12
    
    std_msgs/Header                 header
    uint8                           content
    uint32                          encoder_stamp
    geometry_msgs/TransformStamped  robot_to_camera_tf
    geometry_msgs/TransformStamped  camera_to_reference_tf
    
    float64                         cloud_capturing_duration
    
    uint8                           clustering_method
    uint16                          n_rejected_clusters
    float64                         clustering_duration
    
    float64                         calculation_time # Total object detection time
    
    uint16                          n_valid_objects
    uint16                          n_rejected_objects
    
    im_pickit_msgs/Object[]         objects
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: im_pickit_msgs/Object
    ## Copyright Intermodalics 2016
    ## This message contains all descriptive data for one object found by Pick-it ##
    
    # Object index in list associated to a single detection run.
    uint16                                  index
    
    # Object frame expressed with respect to a frame.
    geometry_msgs/TransformStamped          object_tf
    
    # Object pick frame expressed with respect to a frame.
    geometry_msgs/TransformStamped          object_pick_tf
    
    # Object model used for registration, reliability score calculation and more.
    ObjectModel                             model
    
    # Number of scene points verifying the object model.
    uint16                                  n_points
    
    # Object dimensions. The contents of the x, y and z elements depend on the
    # object type:
    #
    #  |   Type      |    X     |    Y     |    Z     |
    #  |-------------|----------|----------|----------|
    #  | CYLINDER    | length   | diameter | diameter |
    #  | SPHERE      | diameter | diameter | diameter |
    #  | RECTANGLE   | length   | width    |    0     |
    #  | SQUARE      | length   | length   |    0     |
    #  | ELLIPSE     | length   | width    |    0     |
    #  | CIRCLE      | diameter | diameter |    0     |
    #  | POINT_CLOUD | bbox X   | bbox Y   | bbox Z   |
    #  | BLOB        | bbox X   | bbox Y   | bbox Z   |
    #
    # where 'bbox X' means the span of the object's bounding box along the X-axis.
    geometry_msgs/Vector3                   dimensions
    
    # Contains scoring metrics used to quantify the goodness of a detection.
    Reliability                             reliability
    
    # NOTE: There is currently an inconsistency between terms used in the
    #       back-end vs. the front-end. The following table summarizes them to
    #       prevent confusion:
    #
    #       BACK-END flag  maps to ->   FRONT-END detection grid column
    #
    #       is_pickable    maps to ->   Pickable
    #       is_detectable  maps to ->   Valid
    #       is_valid       maps to ->   <None>
    #
    #       Notice in particular how the is_valid back-end flag and the Valid
    #       front-end detection grid column have different meanings.
    
    # Flag that evaluates to true when an object is both pickable and detectable.
    bool                                    is_valid
    
    # Flag that evaluates to true when an object satisfies frame alignment and
    # collision constraints.
    bool                                    is_pickable
    
    # Flag that evaluates to true when an object satisfies fitting, reliability and
    # size constraints.
    bool                                    is_detectable
    
    # List of strings describing main detection status for invalid detections
    # (e.g. ERROR, INVALID, UNPICKABLE).
    # See CATEGORY strings in StatusXxx.msg files for available categories.
    # The list is empty in case of a valid detection.
    string[]                                categories
    
    # List of substatus identifiers providing detail information for each of the
    # above categories. There is one substatus per category.
    # The list is empty in case of a valid detection.
    SubStatus[]                             substatuses
    
    ================================================================================
    MSG: im_pickit_msgs/ObjectModel
    # Copyright (c) 2017, Pick-it NV.
    # All rights reserved.
    
    # Definition of different object models used for registration, reliability score calculation and more.
    
    # Unspecified
    uint8 NONE          = 0
    
    # 2D models:
    uint8 SQUARE        = 21
    uint8 RECTANGLE     = 22
    uint8 CIRCLE        = 23
    uint8 ELLIPSE       = 24
    
    # 3D models:
    uint8 CYLINDER      = 32
    uint8 SPHERE        = 33
    uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).
    
    # Other models:
    uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.
    
    # Models of internal use only:
    uint8 CLUSTER       = 250
    
    uint8 type  # Model type, takes one of the above defined models types as value.
    
    ================================================================================
    MSG: im_pickit_msgs/Reliability
    ## Contains all parameters describing reliability of detected object
    ## Values expressed as confidence levels ranging from 0.0 to 1.0
    
    ## Ratio of inlier points close to the border of the "Intermodalics hole" and
    ## all points of the "Intermodalics hole".
    ReliabilityValue scene_coverage_2d
    
    ## Ratio of inlier points to all points in the cluster.
    ReliabilityValue scene_coverage_3d
    
    ### TODO(@wannesvanloock): Add description pls.
    ReliabilityValue model_contour_coverage_2d
    ### TODO(@wannesvanloock): Add description pls.
    ReliabilityValue model_surface_coverage_2d
    
    ## 3D reliability of the matched model
    ReliabilityValue model_coverage_3d
    
    ================================================================================
    MSG: im_pickit_msgs/ReliabilityValue
    float64 value
    float64 required_value
    
    # mostly we work with lower limits so usually this is false
    bool has_upper_limit     
    ================================================================================
    MSG: im_pickit_msgs/SubStatus
    # Rejected object substatus:
    #  - StatusUnpickable (orange)
    #  - StatusInvalid (red)
    #  - StatusDiscarded (no marker)
    
    uint16 substatus
    string detail
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.content !== undefined) {
      resolved.content = msg.content;
    }
    else {
      resolved.content = 0
    }

    if (msg.encoder_stamp !== undefined) {
      resolved.encoder_stamp = msg.encoder_stamp;
    }
    else {
      resolved.encoder_stamp = 0
    }

    if (msg.robot_to_camera_tf !== undefined) {
      resolved.robot_to_camera_tf = geometry_msgs.msg.TransformStamped.Resolve(msg.robot_to_camera_tf)
    }
    else {
      resolved.robot_to_camera_tf = new geometry_msgs.msg.TransformStamped()
    }

    if (msg.camera_to_reference_tf !== undefined) {
      resolved.camera_to_reference_tf = geometry_msgs.msg.TransformStamped.Resolve(msg.camera_to_reference_tf)
    }
    else {
      resolved.camera_to_reference_tf = new geometry_msgs.msg.TransformStamped()
    }

    if (msg.cloud_capturing_duration !== undefined) {
      resolved.cloud_capturing_duration = msg.cloud_capturing_duration;
    }
    else {
      resolved.cloud_capturing_duration = 0.0
    }

    if (msg.clustering_method !== undefined) {
      resolved.clustering_method = msg.clustering_method;
    }
    else {
      resolved.clustering_method = 0
    }

    if (msg.n_rejected_clusters !== undefined) {
      resolved.n_rejected_clusters = msg.n_rejected_clusters;
    }
    else {
      resolved.n_rejected_clusters = 0
    }

    if (msg.clustering_duration !== undefined) {
      resolved.clustering_duration = msg.clustering_duration;
    }
    else {
      resolved.clustering_duration = 0.0
    }

    if (msg.calculation_time !== undefined) {
      resolved.calculation_time = msg.calculation_time;
    }
    else {
      resolved.calculation_time = 0.0
    }

    if (msg.n_valid_objects !== undefined) {
      resolved.n_valid_objects = msg.n_valid_objects;
    }
    else {
      resolved.n_valid_objects = 0
    }

    if (msg.n_rejected_objects !== undefined) {
      resolved.n_rejected_objects = msg.n_rejected_objects;
    }
    else {
      resolved.n_rejected_objects = 0
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = Object.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

// Constants for message
ObjectArray.Constants = {
  NEW_OBJECT_DETECTION: 2,
  RESET: 0,
  NO_CLUSTERING: 10,
  DISTANCE_BASED_CLUSTERING: 11,
  NORMAL_BASED_CLUSTERING: 12,
}

module.exports = ObjectArray;
