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

class File {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_id = null;
      this.file_name = null;
      this.readonly = null;
    }
    else {
      if (initObj.hasOwnProperty('file_id')) {
        this.file_id = initObj.file_id
      }
      else {
        this.file_id = 0;
      }
      if (initObj.hasOwnProperty('file_name')) {
        this.file_name = initObj.file_name
      }
      else {
        this.file_name = '';
      }
      if (initObj.hasOwnProperty('readonly')) {
        this.readonly = initObj.readonly
      }
      else {
        this.readonly = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type File
    // Serialize message field [file_id]
    bufferOffset = _serializer.int32(obj.file_id, buffer, bufferOffset);
    // Serialize message field [file_name]
    bufferOffset = _serializer.string(obj.file_name, buffer, bufferOffset);
    // Serialize message field [readonly]
    bufferOffset = _serializer.bool(obj.readonly, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type File
    let len;
    let data = new File(null);
    // Deserialize message field [file_id]
    data.file_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [file_name]
    data.file_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [readonly]
    data.readonly = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_name.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/File';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c4f24261c48aaf171f33bc1655b7b8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Copyright Intermodalics 2015
    int32        file_id
    string       file_name
    bool         readonly
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new File(null);
    if (msg.file_id !== undefined) {
      resolved.file_id = msg.file_id;
    }
    else {
      resolved.file_id = 0
    }

    if (msg.file_name !== undefined) {
      resolved.file_name = msg.file_name;
    }
    else {
      resolved.file_name = ''
    }

    if (msg.readonly !== undefined) {
      resolved.readonly = msg.readonly;
    }
    else {
      resolved.readonly = false
    }

    return resolved;
    }
};

module.exports = File;
