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

class PickitStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.setup_file = null;
      this.product_file = null;
      this.setup_changed = null;
      this.product_changed = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('setup_file')) {
        this.setup_file = initObj.setup_file
      }
      else {
        this.setup_file = '';
      }
      if (initObj.hasOwnProperty('product_file')) {
        this.product_file = initObj.product_file
      }
      else {
        this.product_file = '';
      }
      if (initObj.hasOwnProperty('setup_changed')) {
        this.setup_changed = initObj.setup_changed
      }
      else {
        this.setup_changed = false;
      }
      if (initObj.hasOwnProperty('product_changed')) {
        this.product_changed = initObj.product_changed
      }
      else {
        this.product_changed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickitStatus
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [setup_file]
    bufferOffset = _serializer.string(obj.setup_file, buffer, bufferOffset);
    // Serialize message field [product_file]
    bufferOffset = _serializer.string(obj.product_file, buffer, bufferOffset);
    // Serialize message field [setup_changed]
    bufferOffset = _serializer.bool(obj.setup_changed, buffer, bufferOffset);
    // Serialize message field [product_changed]
    bufferOffset = _serializer.bool(obj.product_changed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickitStatus
    let len;
    let data = new PickitStatus(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [setup_file]
    data.setup_file = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [product_file]
    data.product_file = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [setup_changed]
    data.setup_changed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [product_changed]
    data.product_changed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    length += object.setup_file.length;
    length += object.product_file.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/PickitStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e66b3a740a3e3363c03cbef9c13ce9f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Copyright Intermodalics 2014
    ## This message contains Pick-it status information  ##
    
    string state
    
    string setup_file
    string product_file
    
    bool setup_changed
    bool product_changed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PickitStatus(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.setup_file !== undefined) {
      resolved.setup_file = msg.setup_file;
    }
    else {
      resolved.setup_file = ''
    }

    if (msg.product_file !== undefined) {
      resolved.product_file = msg.product_file;
    }
    else {
      resolved.product_file = ''
    }

    if (msg.setup_changed !== undefined) {
      resolved.setup_changed = msg.setup_changed;
    }
    else {
      resolved.setup_changed = false
    }

    if (msg.product_changed !== undefined) {
      resolved.product_changed = msg.product_changed;
    }
    else {
      resolved.product_changed = false
    }

    return resolved;
    }
};

module.exports = PickitStatus;
