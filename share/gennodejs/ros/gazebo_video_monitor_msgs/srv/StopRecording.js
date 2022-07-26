// Auto-generated. Do not edit!

// (in-package gazebo_video_monitor_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StopRecordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.discard = null;
      this.filename = null;
    }
    else {
      if (initObj.hasOwnProperty('discard')) {
        this.discard = initObj.discard
      }
      else {
        this.discard = false;
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopRecordingRequest
    // Serialize message field [discard]
    bufferOffset = _serializer.bool(obj.discard, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopRecordingRequest
    let len;
    let data = new StopRecordingRequest(null);
    // Deserialize message field [discard]
    data.discard = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.filename);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_video_monitor_msgs/StopRecordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2996a92a7f8b4bf91dc0b84a5fda46f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool discard     # True to discard the recording
    string filename  # Filename without extension
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopRecordingRequest(null);
    if (msg.discard !== undefined) {
      resolved.discard = msg.discard;
    }
    else {
      resolved.discard = false
    }

    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    return resolved;
    }
};

class StopRecordingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopRecordingResponse
    // Serialize message field [path]
    bufferOffset = _serializer.string(obj.path, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopRecordingResponse
    let len;
    let data = new StopRecordingResponse(null);
    // Deserialize message field [path]
    data.path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.path);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_video_monitor_msgs/StopRecordingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33ae47e901cc2aa6ac7b9defcd67a418';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string path      # Absolute path to the recording
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopRecordingResponse(null);
    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = ''
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: StopRecordingRequest,
  Response: StopRecordingResponse,
  md5sum() { return '12af5eb2981292046a496c1fb4ba5e7a'; },
  datatype() { return 'gazebo_video_monitor_msgs/StopRecording'; }
};
