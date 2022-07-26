// Auto-generated. Do not edit!

// (in-package gazebo_video_monitor_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Strings = require('../msg/Strings.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StartGmcmRecordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cameras = null;
    }
    else {
      if (initObj.hasOwnProperty('cameras')) {
        this.cameras = initObj.cameras
      }
      else {
        this.cameras = new Strings();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartGmcmRecordingRequest
    // Serialize message field [cameras]
    bufferOffset = Strings.serialize(obj.cameras, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartGmcmRecordingRequest
    let len;
    let data = new StartGmcmRecordingRequest(null);
    // Deserialize message field [cameras]
    data.cameras = Strings.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Strings.getMessageSize(object.cameras);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_video_monitor_msgs/StartGmcmRecordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '176032962ec0f63db7c7bb19a86e7410';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Start recording service for the Gazebo Multi Camera Monitor plugin
    
    gazebo_video_monitor_msgs/Strings cameras
    
    ================================================================================
    MSG: gazebo_video_monitor_msgs/Strings
    string[] names
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartGmcmRecordingRequest(null);
    if (msg.cameras !== undefined) {
      resolved.cameras = Strings.Resolve(msg.cameras)
    }
    else {
      resolved.cameras = new Strings()
    }

    return resolved;
    }
};

class StartGmcmRecordingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartGmcmRecordingResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartGmcmRecordingResponse
    let len;
    let data = new StartGmcmRecordingResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_video_monitor_msgs/StartGmcmRecordingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartGmcmRecordingResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: StartGmcmRecordingRequest,
  Response: StartGmcmRecordingResponse,
  md5sum() { return '176032962ec0f63db7c7bb19a86e7410'; },
  datatype() { return 'gazebo_video_monitor_msgs/StartGmcmRecording'; }
};
