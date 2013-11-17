'use strict'

describe 'Directive: create', () ->
  beforeEach module 'streamApp'

  element = {}

  it 'should make hidden element visible', inject ($rootScope, $compile) ->
    element = angular.element '<create></create>'
    element = $compile(element) $rootScope
    expect(element.text()).toBe 'this is the create directive'
