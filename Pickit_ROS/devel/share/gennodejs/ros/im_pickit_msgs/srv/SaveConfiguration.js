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

class SaveConfigurationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.config_file_path = null;
      this.set_active = null;
    }
    else {
      if (initObj.hasOwnProperty('config_file_path')) {
        this.config_file_path = initObj.config_file_path
      }
      else {
        this.config_file_path = '';
      }
      if (initObj.hasOwnProperty('set_active')) {
        this.set_active = initObj.set_active
      }
      else {
        this.set_active = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveConfigurationRequest
    // Serialize message field [config_file_path]
    bufferOffset = _serializer.string(obj.config_file_path, buffer, bufferOffset);
    // Serialize message field [set_active]
    bufferOffset = _serializer.bool(obj.set_active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveConfigurationRequest
    let len;
    let data = new SaveConfigurationRequest(null);
    // Deserialize message field [config_file_path]
    data.config_file_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [set_active]
    data.set_active = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.config_file_path.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'im_pickit_msgs/SaveConfigurationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a29c739356f1155756656d84cacefd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STATUS_SUCCESS          = 10
    uint8 STATUS_FAILURE          = 20
    
    uint8 STATUS_INVALID_FILENAME = 22
    
    string    config_file_path
    bool      set_active
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveConfigurationRequest(null);
    if (msg.config_file_path !== undefined) {
      resolved.config_file_path = msg.config_file_path;
    }
    else {
      resolved.config_file_path = ''
    }

    if (msg.set_active !== undefined) {
      resolved.set_active = msg.set_active;
    }
    else {
      resolved.set_active = false
    }

    return resolved;
    }
};

// Constants for message
SaveConfigurationRequest.Constants = {
  STATUS_SUCCESS: 10,
  STATUS_FAILURE: 20,
  STATUS_INVALID_FILENAME: 22,
}

class SaveConfigurationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
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
    // Serializes a message object of type SaveConfigurationResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveConfigurationResponse
    let len;
    let data = new SaveConfigurationResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
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
    return 'im_pickit_msgs/SaveConfigurationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '684cd572f268bd9685a29b0430c41747';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8     status
    string    message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveConfigurationResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
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
  Request: SaveConfigurationRequest,
  Response: SaveConfigurationResponse,
  md5sum() { return '0dd17841f9345006b1b64154016fca6c'; },
  datatype() { return 'im_pickit_msgs/SaveConfiguration'; }
};
