'use strict'

describe 'Directive: onVisible', () ->

  # load the directive's module
  beforeEach module 'amatistadigitalApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<on-visible></on-visible>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the onVisible directive'
