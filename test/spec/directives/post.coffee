'use strict'

describe 'Directive: post', () ->
  beforeEach module 'streamApp'

  element = {}

  it 'should make hidden element visible', inject ($rootScope, $compile) ->
    element = angular.element '<post></post>'
    element = $compile(element) $rootScope
    expect(element.text()).toBe 'this is the post directive'
