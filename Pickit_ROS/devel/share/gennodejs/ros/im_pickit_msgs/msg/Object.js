// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectModel = require('./ObjectModel.js');
let Reliability = require('./Reliability.js');
let SubStatus = require('./SubStatus.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.object_tf = null;
      this.object_pick_tf = null;
      this.model = null;
      this.n_points = null;
      this.dimensions = null;
      this.reliability = null;
      this.is_valid = null;
      this.is_pickable = null;
      this.is_detectable = null;
      this.categories = null;
      this.substatuses = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('object_tf')) {
        this.object_tf = initObj.object_tf
      }
      else {
        this.object_tf = new geometry_msgs.msg.TransformStamped();
      }
      if (initObj.hasOwnProperty('object_pick_tf')) {
        this.object_pick_tf = initObj.object_pick_tf
      }
      else {
        this.object_pick_tf = new geometry_msgs.msg.TransformStamped();
      }
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = new ObjectModel();
      }
      if (initObj.hasOwnProperty('n_points')) {
        this.n_points = initObj.n_points
      }
      else {
        this.n_points = 0;
      }
      if (initObj.hasOwnProperty('dimensions')) {
        this.dimensions = initObj.dimensions
      }
      else {
        this.dimensions = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('reliability')) {
        this.reliability = initObj.reliability
      }
      else {
        this.reliability = new Reliability();
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = false;
      }
      if (initObj.hasOwnProperty('is_pickable')) {
        this.is_pickable = initObj.is_pickable
      }
      else {
        this.is_pickable = false;
      }
      if (initObj.hasOwnProperty('is_detectable')) {
        this.is_detectable = initObj.is_detectable
      }
      else {
        this.is_detectable = false;
      }
      if (initObj.hasOwnProperty('categories')) {
        this.categories = initObj.categories
      }
      else {
        this.categories = [];
      }
      if (initObj.hasOwnProperty('substatuses')) {
        this.substatuses = initObj.substatuses
      }
      else {
        this.substatuses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [index]
    bufferOffset = _serializer.uint16(obj.index, buffer, bufferOffset);
    // Serialize message field [object_tf]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.object_tf, buffer, bufferOffset);
    // Serialize message field [object_pick_tf]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.object_pick_tf, buffer, bufferOffset);
    // Serialize message field [model]
    bufferOffset = ObjectModel.serialize(obj.model, buffer, bufferOffset);
    // Serialize message field [n_points]
    bufferOffset = _serializer.uint16(obj.n_points, buffer, bufferOffset);
    // Serialize message field [dimensions]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.dimensions, buffer, bufferOffset);
    // Serialize message field [reliability]
    bufferOffset = Reliability.serialize(obj.reliability, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    // Serialize message field [is_pickable]
    bufferOffset = _serializer.bool(obj.is_pickable, buffer, bufferOffset);
    // Serialize message field [is_detectable]
    bufferOffset = _serializer.bool(obj.is_detectable, buffer, bufferOffset);
    // Serialize message field [categories]
    bufferOffset = _arraySerializer.string(obj.categories, buffer, bufferOffset, null);
    // Serialize message field [substatuses]
    // Serialize the length for message field [substatuses]
    bufferOffset = _serializer.uint32(obj.substatuses.length, buffer, bufferOffset);
    obj.substatuses.forEach((val) => {
      bufferOffset = SubStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [index]
    data.index = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [object_tf]
    data.object_tf = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_pick_tf]
    data.object_pick_tf = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [model]
    data.model = ObjectModel.deserialize(buffer, bufferOffset);
    // Deserialize message field [n_points]
    data.n_points = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [dimensions]
    data.dimensions = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [reliability]
    data.reliability = Reliability.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_pickable]
    data.is_pickable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_detectable]
    data.is_detectable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [categories]
    data.categories = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [substatuses]
    // Deserialize array length for message field [substatuses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.substatuses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.substatuses[i] = SubStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.object_tf);
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.object_pick_tf);
    object.categories.forEach((val) => {
      length += 4 + val.length;
    });
    object.substatuses.forEach((val) => {
      length += SubStatus.getMessageSize(val);
    });
    return length + 125;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2b8ba1b2df980f0868c9ec736119a65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Object(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.object_tf !== undefined) {
      resolved.object_tf = geometry_msgs.msg.TransformStamped.Resolve(msg.object_tf)
    }
    else {
      resolved.object_tf = new geometry_msgs.msg.TransformStamped()
    }

    if (msg.object_pick_tf !== undefined) {
      resolved.object_pick_tf = geometry_msgs.msg.TransformStamped.Resolve(msg.object_pick_tf)
    }
    else {
      resolved.object_pick_tf = new geometry_msgs.msg.TransformStamped()
    }

    if (msg.model !== undefined) {
      resolved.model = ObjectModel.Resolve(msg.model)
    }
    else {
      resolved.model = new ObjectModel()
    }

    if (msg.n_points !== undefined) {
      resolved.n_points = msg.n_points;
    }
    else {
      resolved.n_points = 0
    }

    if (msg.dimensions !== undefined) {
      resolved.dimensions = geometry_msgs.msg.Vector3.Resolve(msg.dimensions)
    }
    else {
      resolved.dimensions = new geometry_msgs.msg.Vector3()
    }

    if (msg.reliability !== undefined) {
      resolved.reliability = Reliability.Resolve(msg.reliability)
    }
    else {
      resolved.reliability = new Reliability()
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = false
    }

    if (msg.is_pickable !== undefined) {
      resolved.is_pickable = msg.is_pickable;
    }
    else {
      resolved.is_pickable = false
    }

    if (msg.is_detectable !== undefined) {
      resolved.is_detectable = msg.is_detectable;
    }
    else {
      resolved.is_detectable = false
    }

    if (msg.categories !== undefined) {
      resolved.categories = msg.categories;
    }
    else {
      resolved.categories = []
    }

    if (msg.substatuses !== undefined) {
      resolved.substatuses = new Array(msg.substatuses.length);
      for (let i = 0; i < resolved.substatuses.length; ++i) {
        resolved.substatuses[i] = SubStatus.Resolve(msg.substatuses[i]);
      }
    }
    else {
      resolved.substatuses = []
    }

    return resolved;
    }
};

module.exports = Object;
