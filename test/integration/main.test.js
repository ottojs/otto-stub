
'use strict';

// Modules
require('should');

// Subject
var subject = require('../../lib/index.js');

describe('Module', function () {

  it('should have property .data()', function () {
    subject().should.have.property('data').and.be.type('object');
  });

  it('should have method .stub()', function () {
    subject().should.have.property('stub').and.be.type('function');
  });

  it('should have method .exists()', function () {
    subject().should.have.property('exists').and.be.type('function');
  });

  it('should have method .read()', function () {
    subject().should.have.property('read').and.be.type('function');
  });

});
