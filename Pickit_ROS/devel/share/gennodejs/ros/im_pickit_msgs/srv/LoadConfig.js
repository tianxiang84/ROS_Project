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

class LoadConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.config_type = null;
      this.path = null;
      this.set_persistent = null;
    }
    else {
      if (initObj.hasOwnProperty('config_type')) {
        this.config_type = initObj.config_type
      }
      else {
        this.config_type = 0;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = '';
      }
      if (initObj.hasOwnProperty('set_persistent')) {
        this.set_persistent = initObj.set_persistent
      }
      else {
        this.set_persistent = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadConfigRequest
    // Serialize message field [config_type]
    bufferOffset = _serializer.uint8(obj.config_type, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = _serializer.string(obj.path, buffer, bufferOffset);
    // Serialize message field [set_persistent]
    bufferOffset = _serializer.bool(obj.set_persistent, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadConfigRequest
    let len;
    let data = new LoadConfigRequest(null);
    // Deserialize message field [config_type]
    data.config_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [set_persistent]
    data.set_persistent = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.path.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'im_pickit_msgs/LoadConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '805484315e7d6c7653d6a6b5867c6cff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CONFIG_SETUP = 1
    uint8 CONFIG_PRODUCT = 2
    
    uint8     config_type
    string    path
    bool      set_persistent
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadConfigRequest(null);
    if (msg.config_type !== undefined) {
      resolved.config_type = msg.config_type;
    }
    else {
      resolved.config_type = 0
    }

    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = ''
    }

    if (msg.set_persistent !== undefined) {
      resolved.set_persistent = msg.set_persistent;
    }
    else {
      resolved.set_persistent = false
    }

    return resolved;
    }
};

// Constants for message
LoadConfigRequest.Constants = {
  CONFIG_SETUP: 1,
  CONFIG_PRODUCT: 2,
}

class LoadConfigResponse {
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
    // Serializes a message object of type LoadConfigResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadConfigResponse
    let len;
    let data = new LoadConfigResponse(null);
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
    return 'im_pickit_msgs/LoadConfigResponse';
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
    const resolved = new LoadConfigResponse(null);
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
  Request: LoadConfigRequest,
  Response: LoadConfigResponse,
  md5sum() { return 'eab8b02e16fe6a8a2dd0ff58db907dfe'; },
  datatype() { return 'im_pickit_msgs/LoadConfig'; }
};
