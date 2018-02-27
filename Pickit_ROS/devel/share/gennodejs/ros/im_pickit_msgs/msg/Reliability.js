// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ReliabilityValue = require('./ReliabilityValue.js');

//-----------------------------------------------------------

class Reliability {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scene_coverage_2d = null;
      this.scene_coverage_3d = null;
      this.model_contour_coverage_2d = null;
      this.model_surface_coverage_2d = null;
      this.model_coverage_3d = null;
    }
    else {
      if (initObj.hasOwnProperty('scene_coverage_2d')) {
        this.scene_coverage_2d = initObj.scene_coverage_2d
      }
      else {
        this.scene_coverage_2d = new ReliabilityValue();
      }
      if (initObj.hasOwnProperty('scene_coverage_3d')) {
        this.scene_coverage_3d = initObj.scene_coverage_3d
      }
      else {
        this.scene_coverage_3d = new ReliabilityValue();
      }
      if (initObj.hasOwnProperty('model_contour_coverage_2d')) {
        this.model_contour_coverage_2d = initObj.model_contour_coverage_2d
      }
      else {
        this.model_contour_coverage_2d = new ReliabilityValue();
      }
      if (initObj.hasOwnProperty('model_surface_coverage_2d')) {
        this.model_surface_coverage_2d = initObj.model_surface_coverage_2d
      }
      else {
        this.model_surface_coverage_2d = new ReliabilityValue();
      }
      if (initObj.hasOwnProperty('model_coverage_3d')) {
        this.model_coverage_3d = initObj.model_coverage_3d
      }
      else {
        this.model_coverage_3d = new ReliabilityValue();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Reliability
    // Serialize message field [scene_coverage_2d]
    bufferOffset = ReliabilityValue.serialize(obj.scene_coverage_2d, buffer, bufferOffset);
    // Serialize message field [scene_coverage_3d]
    bufferOffset = ReliabilityValue.serialize(obj.scene_coverage_3d, buffer, bufferOffset);
    // Serialize message field [model_contour_coverage_2d]
    bufferOffset = ReliabilityValue.serialize(obj.model_contour_coverage_2d, buffer, bufferOffset);
    // Serialize message field [model_surface_coverage_2d]
    bufferOffset = ReliabilityValue.serialize(obj.model_surface_coverage_2d, buffer, bufferOffset);
    // Serialize message field [model_coverage_3d]
    bufferOffset = ReliabilityValue.serialize(obj.model_coverage_3d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Reliability
    let len;
    let data = new Reliability(null);
    // Deserialize message field [scene_coverage_2d]
    data.scene_coverage_2d = ReliabilityValue.deserialize(buffer, bufferOffset);
    // Deserialize message field [scene_coverage_3d]
    data.scene_coverage_3d = ReliabilityValue.deserialize(buffer, bufferOffset);
    // Deserialize message field [model_contour_coverage_2d]
    data.model_contour_coverage_2d = ReliabilityValue.deserialize(buffer, bufferOffset);
    // Deserialize message field [model_surface_coverage_2d]
    data.model_surface_coverage_2d = ReliabilityValue.deserialize(buffer, bufferOffset);
    // Deserialize message field [model_coverage_3d]
    data.model_coverage_3d = ReliabilityValue.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 85;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/Reliability';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '685a54d871aab00bbe45a67c03dafaea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Reliability(null);
    if (msg.scene_coverage_2d !== undefined) {
      resolved.scene_coverage_2d = ReliabilityValue.Resolve(msg.scene_coverage_2d)
    }
    else {
      resolved.scene_coverage_2d = new ReliabilityValue()
    }

    if (msg.scene_coverage_3d !== undefined) {
      resolved.scene_coverage_3d = ReliabilityValue.Resolve(msg.scene_coverage_3d)
    }
    else {
      resolved.scene_coverage_3d = new ReliabilityValue()
    }

    if (msg.model_contour_coverage_2d !== undefined) {
      resolved.model_contour_coverage_2d = ReliabilityValue.Resolve(msg.model_contour_coverage_2d)
    }
    else {
      resolved.model_contour_coverage_2d = new ReliabilityValue()
    }

    if (msg.model_surface_coverage_2d !== undefined) {
      resolved.model_surface_coverage_2d = ReliabilityValue.Resolve(msg.model_surface_coverage_2d)
    }
    else {
      resolved.model_surface_coverage_2d = new ReliabilityValue()
    }

    if (msg.model_coverage_3d !== undefined) {
      resolved.model_coverage_3d = ReliabilityValue.Resolve(msg.model_coverage_3d)
    }
    else {
      resolved.model_coverage_3d = new ReliabilityValue()
    }

    return resolved;
    }
};

module.exports = Reliability;
