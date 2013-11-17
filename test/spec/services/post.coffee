'use strict'

describe 'Service: post', () ->

  # load the service's module
  beforeEach module 'streamApp'

  # instantiate service
  post = {}
  beforeEach inject (_post_) ->
    post = _post_

  it 'should do something', () ->
    expect(!!post).toBe true;
