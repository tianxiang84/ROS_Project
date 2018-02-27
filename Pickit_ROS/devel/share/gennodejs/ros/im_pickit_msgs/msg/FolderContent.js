// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SubfolderContent = require('./SubfolderContent.js');

//-----------------------------------------------------------

class FolderContent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.folder_name = null;
      this.folder_content = null;
    }
    else {
      if (initObj.hasOwnProperty('folder_name')) {
        this.folder_name = initObj.folder_name
      }
      else {
        this.folder_name = '';
      }
      if (initObj.hasOwnProperty('folder_content')) {
        this.folder_content = initObj.folder_content
      }
      else {
        this.folder_content = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FolderContent
    // Serialize message field [folder_name]
    bufferOffset = _serializer.string(obj.folder_name, buffer, bufferOffset);
    // Serialize message field [folder_content]
    // Serialize the length for message field [folder_content]
    bufferOffset = _serializer.uint32(obj.folder_content.length, buffer, bufferOffset);
    obj.folder_content.forEach((val) => {
      bufferOffset = SubfolderContent.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FolderContent
    let len;
    let data = new FolderContent(null);
    // Deserialize message field [folder_name]
    data.folder_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [folder_content]
    // Deserialize array length for message field [folder_content]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.folder_content = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.folder_content[i] = SubfolderContent.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.folder_name.length;
    object.folder_content.forEach((val) => {
      length += SubfolderContent.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/FolderContent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b930894bddbcdb7d52f4b6e2fa737db2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Copyright Intermodalics 2015
    string                                  folder_name         ## This is the absolute path
    im_pickit_msgs/SubfolderContent[]       folder_content
    
     
    ================================================================================
    MSG: im_pickit_msgs/SubfolderContent
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
    const resolved = new FolderContent(null);
    if (msg.folder_name !== undefined) {
      resolved.folder_name = msg.folder_name;
    }
    else {
      resolved.folder_name = ''
    }

    if (msg.folder_content !== undefined) {
      resolved.folder_content = new Array(msg.folder_content.length);
      for (let i = 0; i < resolved.folder_content.length; ++i) {
        resolved.folder_content[i] = SubfolderContent.Resolve(msg.folder_content[i]);
      }
    }
    else {
      resolved.folder_content = []
    }

    return resolved;
    }
};

module.exports = FolderContent;
