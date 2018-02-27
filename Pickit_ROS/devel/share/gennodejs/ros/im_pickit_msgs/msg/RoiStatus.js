// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RoiStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roi_markers_visible = null;
      this.roi_defined = null;
      this.bg_points_defined = null;
      this.bg_plane_defined = null;
      this.bg_sphere_defined = null;
    }
    else {
      if (initObj.hasOwnProperty('roi_markers_visible')) {
        this.roi_markers_visible = initObj.roi_markers_visible
      }
      else {
        this.roi_markers_visible = false;
      }
      if (initObj.hasOwnProperty('roi_defined')) {
        this.roi_defined = initObj.roi_defined
      }
      else {
        this.roi_defined = false;
      }
      if (initObj.hasOwnProperty('bg_points_defined')) {
        this.bg_points_defined = initObj.bg_points_defined
      }
      else {
        this.bg_points_defined = false;
      }
      if (initObj.hasOwnProperty('bg_plane_defined')) {
        this.bg_plane_defined = initObj.bg_plane_defined
      }
      else {
        this.bg_plane_defined = false;
      }
      if (initObj.hasOwnProperty('bg_sphere_defined')) {
        this.bg_sphere_defined = initObj.bg_sphere_defined
      }
      else {
        this.bg_sphere_defined = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoiStatus
    // Serialize message field [roi_markers_visible]
    bufferOffset = _serializer.bool(obj.roi_markers_visible, buffer, bufferOffset);
    // Serialize message field [roi_defined]
    bufferOffset = _serializer.bool(obj.roi_defined, buffer, bufferOffset);
    // Serialize message field [bg_points_defined]
    bufferOffset = _serializer.bool(obj.bg_points_defined, buffer, bufferOffset);
    // Serialize message field [bg_plane_defined]
    bufferOffset = _serializer.bool(obj.bg_plane_defined, buffer, bufferOffset);
    // Serialize message field [bg_sphere_defined]
    bufferOffset = _serializer.bool(obj.bg_sphere_defined, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoiStatus
    let len;
    let data = new RoiStatus(null);
    // Deserialize message field [roi_markers_visible]
    data.roi_markers_visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [roi_defined]
    data.roi_defined = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bg_points_defined]
    data.bg_points_defined = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bg_plane_defined]
    data.bg_plane_defined = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bg_sphere_defined]
    data.bg_sphere_defined = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/RoiStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15f99c44da3357bca53b85d90df3508d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Copyright Pick-it 2017
    ## This message contains ROI status information  ##
    
    bool roi_markers_visible
    bool roi_defined # TODO remove this flag and replace with service request
    
    bool bg_points_defined
    bool bg_plane_defined
    bool bg_sphere_defined
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoiStatus(null);
    if (msg.roi_markers_visible !== undefined) {
      resolved.roi_markers_visible = msg.roi_markers_visible;
    }
    else {
      resolved.roi_markers_visible = false
    }

    if (msg.roi_defined !== undefined) {
      resolved.roi_defined = msg.roi_defined;
    }
    else {
      resolved.roi_defined = false
    }

    if (msg.bg_points_defined !== undefined) {
      resolved.bg_points_defined = msg.bg_points_defined;
    }
    else {
      resolved.bg_points_defined = false
    }

    if (msg.bg_plane_defined !== undefined) {
      resolved.bg_plane_defined = msg.bg_plane_defined;
    }
    else {
      resolved.bg_plane_defined = false
    }

    if (msg.bg_sphere_defined !== undefined) {
      resolved.bg_sphere_defined = msg.bg_sphere_defined;
    }
    else {
      resolved.bg_sphere_defined = false
    }

    return resolved;
    }
};

module.exports = RoiStatus;
