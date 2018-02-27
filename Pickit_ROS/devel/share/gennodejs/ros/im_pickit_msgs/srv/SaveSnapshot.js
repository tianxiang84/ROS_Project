// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaveSnapshotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.snapshot_name = null;
      this.robot_request = null;
    }
    else {
      if (initObj.hasOwnProperty('snapshot_name')) {
        this.snapshot_name = initObj.snapshot_name
      }
      else {
        this.snapshot_name = '';
      }
      if (initObj.hasOwnProperty('robot_request')) {
        this.robot_request = initObj.robot_request
      }
      else {
        this.robot_request = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveSnapshotRequest
    // Serialize message field [snapshot_name]
    bufferOffset = _serializer.string(obj.snapshot_name, buffer, bufferOffset);
    // Serialize message field [robot_request]
    bufferOffset = _serializer.bool(obj.robot_request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveSnapshotRequest
    let len;
    let data = new SaveSnapshotRequest(null);
    // Deserialize message field [snapshot_name]
    data.snapshot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_request]
    data.robot_request = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.snapshot_name.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'im_pickit_msgs/SaveSnapshotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a7038b273f96eb365eb0416823fefa7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string    snapshot_name
    bool      robot_request
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveSnapshotRequest(null);
    if (msg.snapshot_name !== undefined) {
      resolved.snapshot_name = msg.snapshot_name;
    }
    else {
      resolved.snapshot_name = ''
    }

    if (msg.robot_request !== undefined) {
      resolved.robot_request = msg.robot_request;
    }
    else {
      resolved.robot_request = false
    }

    return resolved;
    }
};

class SaveSnapshotResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveSnapshotResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveSnapshotResponse
    let len;
    let data = new SaveSnapshotResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'im_pickit_msgs/SaveSnapshotResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool      success
    string    message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveSnapshotResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SaveSnapshotRequest,
  Response: SaveSnapshotResponse,
  md5sum() { return '90190d82af18bd6fd2d3560080cbe804'; },
  datatype() { return 'im_pickit_msgs/SaveSnapshot'; }
};
