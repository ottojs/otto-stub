
'use strict';

// Exports
module.exports = function () {

  var obj = {};

  obj.data = {};

  obj.stub = function (data) {
    obj.data = data;
  };

  obj.exists = function (key) {
    return obj.data.hasOwnProperty(key);
  };

  obj.read = function (key) {
    return obj.data[key];
  };

  return obj;

};
