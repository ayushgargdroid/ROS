// Auto-generated. Do not edit!

// (in-package testbot_description.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class Data {
  constructor() {
    this.leftf = 0;
    this.leftr = 0;
    this.rightf = 0;
    this.rightr = 0;
    this.angle = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Data
    // Serialize message field [leftf]
    bufferInfo = _serializer.int64(obj.leftf, bufferInfo);
    // Serialize message field [leftr]
    bufferInfo = _serializer.int64(obj.leftr, bufferInfo);
    // Serialize message field [rightf]
    bufferInfo = _serializer.int64(obj.rightf, bufferInfo);
    // Serialize message field [rightr]
    bufferInfo = _serializer.int64(obj.rightr, bufferInfo);
    // Serialize message field [angle]
    bufferInfo = _serializer.int64(obj.angle, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Data
    let tmp;
    let len;
    let data = new Data();
    // Deserialize message field [leftf]
    tmp = _deserializer.int64(buffer);
    data.leftf = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [leftr]
    tmp = _deserializer.int64(buffer);
    data.leftr = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [rightf]
    tmp = _deserializer.int64(buffer);
    data.rightf = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [rightr]
    tmp = _deserializer.int64(buffer);
    data.rightr = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [angle]
    tmp = _deserializer.int64(buffer);
    data.angle = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'testbot_description/Data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '795a1a99ef68b6e918deb625bb3942b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 leftf
    int64 leftr
    int64 rightf
    int64 rightr
    int64 angle
    
    `;
  }

};

module.exports = Data;
