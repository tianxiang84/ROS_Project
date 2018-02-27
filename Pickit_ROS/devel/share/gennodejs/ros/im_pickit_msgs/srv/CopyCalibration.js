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

class CopyCalibrationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source_setup_file = null;
      this.target_setup_file = null;
    }
    else {
      if (initObj.hasOwnProperty('source_setup_file')) {
        this.source_setup_file = initObj.source_setup_file
      }
      else {
        this.source_setup_file = '';
      }
      if (initObj.hasOwnProperty('target_setup_file')) {
        this.target_setup_file = initObj.target_setup_file
      }
      else {
        this.target_setup_file = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CopyCalibrationRequest
    // Serialize message field [source_setup_file]
    bufferOffset = _serializer.string(obj.source_setup_file, buffer, bufferOffset);
    // Serialize message field [target_setup_file]
    bufferOffset = _serializer.string(obj.target_setup_file, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CopyCalibrationRequest
    let len;
    let data = new CopyCalibrationRequest(null);
    // Deserialize message field [source_setup_file]
    data.source_setup_file = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_setup_file]
    data.target_setup_file = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.source_setup_file.length;
    length += object.target_setup_file.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'im_pickit_msgs/CopyCalibrationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3a35b241129d987f4b8abb66896a608';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string    source_setup_file
    string    target_setup_file
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CopyCalibrationRequest(null);
    if (msg.source_setup_file !== undefined) {
      resolved.source_setup_file = msg.source_setup_file;
    }
    else {
      resolved.source_setup_file = ''
    }

    if (msg.target_setup_file !== undefined) {
      resolved.target_setup_file = msg.target_setup_file;
    }
    else {
      resolved.target_setup_file = ''
    }

    return resolved;
    }
};

class CopyCalibrationResponse {
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
    // Serializes a message object of type CopyCalibrationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CopyCalibrationResponse
    let len;
    let data = new CopyCalibrationResponse(null);
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
    return 'im_pickit_msgs/CopyCalibrationResponse';
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
    const resolved = new CopyCalibrationResponse(null);
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
  Request: CopyCalibrationRequest,
  Response: CopyCalibrationResponse,
  md5sum() { return '7d0f212b9fa08ad9ba6469711447fcc6'; },
  datatype() { return 'im_pickit_msgs/CopyCalibration'; }
};
