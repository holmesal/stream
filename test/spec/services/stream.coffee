'use strict'

describe 'Service: stream', () ->

  # load the service's module
  beforeEach module 'streamApp'

  # instantiate service
  stream = {}
  beforeEach inject (_stream_) ->
    stream = _stream_

  it 'should do something', () ->
    expect(!!stream).toBe true;
