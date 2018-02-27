// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let File = require('./File.js');

//-----------------------------------------------------------

class SubfolderContent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subfolder_name = null;
      this.subfolder_files = null;
    }
    else {
      if (initObj.hasOwnProperty('subfolder_name')) {
        this.subfolder_name = initObj.subfolder_name
      }
      else {
        this.subfolder_name = '';
      }
      if (initObj.hasOwnProperty('subfolder_files')) {
        this.subfolder_files = initObj.subfolder_files
      }
      else {
        this.subfolder_files = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubfolderContent
    // Serialize message field [subfolder_name]
    bufferOffset = _serializer.string(obj.subfolder_name, buffer, bufferOffset);
    // Serialize message field [subfolder_files]
    // Serialize the length for message field [subfolder_files]
    bufferOffset = _serializer.uint32(obj.subfolder_files.length, buffer, bufferOffset);
    obj.subfolder_files.forEach((val) => {
      bufferOffset = File.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubfolderContent
    let len;
    let data = new SubfolderContent(null);
    // Deserialize message field [subfolder_name]
    data.subfolder_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [subfolder_files]
    // Deserialize array length for message field [subfolder_files]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.subfolder_files = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.subfolder_files[i] = File.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.subfolder_name.length;
    object.subfolder_files.forEach((val) => {
      length += File.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/SubfolderContent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e61ad7c13c96906f44de1e72d7cf413f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Copyright Intermodalics 2014
    string                  subfolder_name             ## This is the relative name
    im_pickit_msgs/File[]   subfolder_files
    
    ================================================================================
    MSG: im_pickit_msgs/File
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
    const resolved = new SubfolderContent(null);
    if (msg.subfolder_name !== undefined) {
      resolved.subfolder_name = msg.subfolder_name;
    }
    else {
      resolved.subfolder_name = ''
    }

    if (msg.subfolder_files !== undefined) {
      resolved.subfolder_files = new Array(msg.subfolder_files.length);
      for (let i = 0; i < resolved.subfolder_files.length; ++i) {
        resolved.subfolder_files[i] = File.Resolve(msg.subfolder_files[i]);
      }
    }
    else {
      resolved.subfolder_files = []
    }

    return resolved;
    }
};

module.exports = SubfolderContent;
