'use strict'

describe 'Directive: parallax', () ->

  # load the directive's module
  beforeEach module 'amatistadigitalApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<parallax></parallax>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the parallax directive'
