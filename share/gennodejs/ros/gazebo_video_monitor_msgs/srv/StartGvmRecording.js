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

class StartGvmRecordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.disable_window = null;
      this.world_as_main_view = null;
    }
    else {
      if (initObj.hasOwnProperty('disable_window')) {
        this.disable_window = initObj.disable_window
      }
      else {
        this.disable_window = false;
      }
      if (initObj.hasOwnProperty('world_as_main_view')) {
        this.world_as_main_view = initObj.world_as_main_view
      }
      else {
        this.world_as_main_view = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartGvmRecordingRequest
    // Serialize message field [disable_window]
    bufferOffset = _serializer.bool(obj.disable_window, buffer, bufferOffset);
    // Serialize message field [world_as_main_view]
    bufferOffset = _serializer.bool(obj.world_as_main_view, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartGvmRecordingRequest
    let len;
    let data = new StartGvmRecordingRequest(null);
    // Deserialize message field [disable_window]
    data.disable_window = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [world_as_main_view]
    data.world_as_main_view = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_video_monitor_msgs/StartGvmRecordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74a62fa060bc26d4ef1f8e73a79a72f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Start recording service for the Gazebo Video Monitor plugin
    
    bool disable_window
    bool world_as_main_view
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartGvmRecordingRequest(null);
    if (msg.disable_window !== undefined) {
      resolved.disable_window = msg.disable_window;
    }
    else {
      resolved.disable_window = false
    }

    if (msg.world_as_main_view !== undefined) {
      resolved.world_as_main_view = msg.world_as_main_view;
    }
    else {
      resolved.world_as_main_view = false
    }

    return resolved;
    }
};

class StartGvmRecordingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartGvmRecordingResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartGvmRecordingResponse
    let len;
    let data = new StartGvmRecordingResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_video_monitor_msgs/StartGvmRecordingResponse';
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
    const resolved = new StartGvmRecordingResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: StartGvmRecordingRequest,
  Response: StartGvmRecordingResponse,
  md5sum() { return '74a62fa060bc26d4ef1f8e73a79a72f6'; },
  datatype() { return 'gazebo_video_monitor_msgs/StartGvmRecording'; }
};
