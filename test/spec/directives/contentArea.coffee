'use strict'

describe 'Directive: contentArea', () ->

  # load the directive's module
  beforeEach module 'amatistadigitalApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<content-area></content-area>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the contentArea directive'
