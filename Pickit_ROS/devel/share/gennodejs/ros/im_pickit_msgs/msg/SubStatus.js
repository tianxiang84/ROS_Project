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

class SubStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.substatus = null;
      this.detail = null;
    }
    else {
      if (initObj.hasOwnProperty('substatus')) {
        this.substatus = initObj.substatus
      }
      else {
        this.substatus = 0;
      }
      if (initObj.hasOwnProperty('detail')) {
        this.detail = initObj.detail
      }
      else {
        this.detail = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubStatus
    // Serialize message field [substatus]
    bufferOffset = _serializer.uint16(obj.substatus, buffer, bufferOffset);
    // Serialize message field [detail]
    bufferOffset = _serializer.string(obj.detail, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubStatus
    let len;
    let data = new SubStatus(null);
    // Deserialize message field [substatus]
    data.substatus = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [detail]
    data.detail = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.detail.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/SubStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '637c475b1be22ba7a5f49036bb64ff8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SubStatus(null);
    if (msg.substatus !== undefined) {
      resolved.substatus = msg.substatus;
    }
    else {
      resolved.substatus = 0
    }

    if (msg.detail !== undefined) {
      resolved.detail = msg.detail;
    }
    else {
      resolved.detail = ''
    }

    return resolved;
    }
};

module.exports = SubStatus;
