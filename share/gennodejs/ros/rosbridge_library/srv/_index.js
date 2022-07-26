
"use strict";

let TestResponseOnly = require('./TestResponseOnly.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let TestRequestOnly = require('./TestRequestOnly.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let AddTwoInts = require('./AddTwoInts.js')
let SendBytes = require('./SendBytes.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let TestEmpty = require('./TestEmpty.js')
let TestNestedService = require('./TestNestedService.js')

module.exports = {
  TestResponseOnly: TestResponseOnly,
  TestMultipleResponseFields: TestMultipleResponseFields,
  TestRequestOnly: TestRequestOnly,
  TestMultipleRequestFields: TestMultipleRequestFields,
  TestRequestAndResponse: TestRequestAndResponse,
  AddTwoInts: AddTwoInts,
  SendBytes: SendBytes,
  TestArrayRequest: TestArrayRequest,
  TestEmpty: TestEmpty,
  TestNestedService: TestNestedService,
};
