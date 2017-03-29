// Auto-generated. Do not edit!

// (in-package blink_led.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class NotRequest {
  constructor() {
    this.a = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type NotRequest
    // Serialize message field [a]
    bufferInfo = _serializer.int64(obj.a, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type NotRequest
    let tmp;
    let len;
    let data = new NotRequest();
    // Deserialize message field [a]
    tmp = _deserializer.int64(buffer);
    data.a = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'blink_led/NotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '019706110004b728d56d8baaa8e32797';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 a
    
    `;
  }

};

class NotResponse {
  constructor() {
    this.task = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type NotResponse
    // Serialize message field [task]
    bufferInfo = _serializer.string(obj.task, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type NotResponse
    let tmp;
    let len;
    let data = new NotResponse();
    // Deserialize message field [task]
    tmp = _deserializer.string(buffer);
    data.task = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'blink_led/NotResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ece8f504419f7ca4d91b277e47ff617';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string task
    
    
    `;
  }

};

module.exports = {
  Request: NotRequest,
  Response: NotResponse
};
