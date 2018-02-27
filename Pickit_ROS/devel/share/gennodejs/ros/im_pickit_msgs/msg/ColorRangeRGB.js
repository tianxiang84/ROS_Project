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

class ColorRangeRGB {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r_min = null;
      this.r_max = null;
      this.g_min = null;
      this.g_max = null;
      this.b_min = null;
      this.b_max = null;
      this.threshold = null;
    }
    else {
      if (initObj.hasOwnProperty('r_min')) {
        this.r_min = initObj.r_min
      }
      else {
        this.r_min = 0;
      }
      if (initObj.hasOwnProperty('r_max')) {
        this.r_max = initObj.r_max
      }
      else {
        this.r_max = 0;
      }
      if (initObj.hasOwnProperty('g_min')) {
        this.g_min = initObj.g_min
      }
      else {
        this.g_min = 0;
      }
      if (initObj.hasOwnProperty('g_max')) {
        this.g_max = initObj.g_max
      }
      else {
        this.g_max = 0;
      }
      if (initObj.hasOwnProperty('b_min')) {
        this.b_min = initObj.b_min
      }
      else {
        this.b_min = 0;
      }
      if (initObj.hasOwnProperty('b_max')) {
        this.b_max = initObj.b_max
      }
      else {
        this.b_max = 0;
      }
      if (initObj.hasOwnProperty('threshold')) {
        this.threshold = initObj.threshold
      }
      else {
        this.threshold = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorRangeRGB
    // Serialize message field [r_min]
    bufferOffset = _serializer.int32(obj.r_min, buffer, bufferOffset);
    // Serialize message field [r_max]
    bufferOffset = _serializer.int32(obj.r_max, buffer, bufferOffset);
    // Serialize message field [g_min]
    bufferOffset = _serializer.int32(obj.g_min, buffer, bufferOffset);
    // Serialize message field [g_max]
    bufferOffset = _serializer.int32(obj.g_max, buffer, bufferOffset);
    // Serialize message field [b_min]
    bufferOffset = _serializer.int32(obj.b_min, buffer, bufferOffset);
    // Serialize message field [b_max]
    bufferOffset = _serializer.int32(obj.b_max, buffer, bufferOffset);
    // Serialize message field [threshold]
    bufferOffset = _serializer.uint32(obj.threshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorRangeRGB
    let len;
    let data = new ColorRangeRGB(null);
    // Deserialize message field [r_min]
    data.r_min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [r_max]
    data.r_max = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [g_min]
    data.g_min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [g_max]
    data.g_max = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b_min]
    data.b_min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b_max]
    data.b_max = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [threshold]
    data.threshold = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/ColorRangeRGB';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31b60f88d3839dd75fbd039dd46fec9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # An RGB-based color range.
    
    # The range for the colors (from 0 to 255).
    int32 r_min
    int32 r_max
    int32 g_min
    int32 g_max
    int32 b_min
    int32 b_max
    
    uint32 threshold
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ColorRangeRGB(null);
    if (msg.r_min !== undefined) {
      resolved.r_min = msg.r_min;
    }
    else {
      resolved.r_min = 0
    }

    if (msg.r_max !== undefined) {
      resolved.r_max = msg.r_max;
    }
    else {
      resolved.r_max = 0
    }

    if (msg.g_min !== undefined) {
      resolved.g_min = msg.g_min;
    }
    else {
      resolved.g_min = 0
    }

    if (msg.g_max !== undefined) {
      resolved.g_max = msg.g_max;
    }
    else {
      resolved.g_max = 0
    }

    if (msg.b_min !== undefined) {
      resolved.b_min = msg.b_min;
    }
    else {
      resolved.b_min = 0
    }

    if (msg.b_max !== undefined) {
      resolved.b_max = msg.b_max;
    }
    else {
      resolved.b_max = 0
    }

    if (msg.threshold !== undefined) {
      resolved.threshold = msg.threshold;
    }
    else {
      resolved.threshold = 0
    }

    return resolved;
    }
};

module.exports = ColorRangeRGB;
