'use strict'

describe 'Controller: OurpowersCtrl', () ->

  # load the controller's module
  beforeEach module 'amatistadigitalApp'

  OurpowersCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    OurpowersCtrl = $controller 'OurpowersCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
