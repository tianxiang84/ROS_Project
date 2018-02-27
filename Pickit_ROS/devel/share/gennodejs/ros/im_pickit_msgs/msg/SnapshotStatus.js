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

class SnapshotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.snapshot_mode = null;
      this.snapshot_name = null;
      this.system_id = null;
      this.pickit_version = null;
      this.robot_type = null;
    }
    else {
      if (initObj.hasOwnProperty('snapshot_mode')) {
        this.snapshot_mode = initObj.snapshot_mode
      }
      else {
        this.snapshot_mode = false;
      }
      if (initObj.hasOwnProperty('snapshot_name')) {
        this.snapshot_name = initObj.snapshot_name
      }
      else {
        this.snapshot_name = '';
      }
      if (initObj.hasOwnProperty('system_id')) {
        this.system_id = initObj.system_id
      }
      else {
        this.system_id = '';
      }
      if (initObj.hasOwnProperty('pickit_version')) {
        this.pickit_version = initObj.pickit_version
      }
      else {
        this.pickit_version = '';
      }
      if (initObj.hasOwnProperty('robot_type')) {
        this.robot_type = initObj.robot_type
      }
      else {
        this.robot_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SnapshotStatus
    // Serialize message field [snapshot_mode]
    bufferOffset = _serializer.bool(obj.snapshot_mode, buffer, bufferOffset);
    // Serialize message field [snapshot_name]
    bufferOffset = _serializer.string(obj.snapshot_name, buffer, bufferOffset);
    // Serialize message field [system_id]
    bufferOffset = _serializer.string(obj.system_id, buffer, bufferOffset);
    // Serialize message field [pickit_version]
    bufferOffset = _serializer.string(obj.pickit_version, buffer, bufferOffset);
    // Serialize message field [robot_type]
    bufferOffset = _serializer.string(obj.robot_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SnapshotStatus
    let len;
    let data = new SnapshotStatus(null);
    // Deserialize message field [snapshot_mode]
    data.snapshot_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [snapshot_name]
    data.snapshot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [system_id]
    data.system_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pickit_version]
    data.pickit_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_type]
    data.robot_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.snapshot_name.length;
    length += object.system_id.length;
    length += object.pickit_version.length;
    length += object.robot_type.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/SnapshotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1c1150594163791dcb2936812dacac0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool snapshot_mode            # boolean indicating whether we are in snapshot mode or not
    string snapshot_name          # name of the loaded snapshot
    string system_id                  # Hostname of the machine that generated the snapshot
    string pickit_version             # Git hash in case of compilation from source OR pickit version
    string robot_type                 # Robot type from the socket interface.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SnapshotStatus(null);
    if (msg.snapshot_mode !== undefined) {
      resolved.snapshot_mode = msg.snapshot_mode;
    }
    else {
      resolved.snapshot_mode = false
    }

    if (msg.snapshot_name !== undefined) {
      resolved.snapshot_name = msg.snapshot_name;
    }
    else {
      resolved.snapshot_name = ''
    }

    if (msg.system_id !== undefined) {
      resolved.system_id = msg.system_id;
    }
    else {
      resolved.system_id = ''
    }

    if (msg.pickit_version !== undefined) {
      resolved.pickit_version = msg.pickit_version;
    }
    else {
      resolved.pickit_version = ''
    }

    if (msg.robot_type !== undefined) {
      resolved.robot_type = msg.robot_type;
    }
    else {
      resolved.robot_type = ''
    }

    return resolved;
    }
};

module.exports = SnapshotStatus;
