'use strict'

describe 'Controller: CreativeprocessCtrl', () ->

  # load the controller's module
  beforeEach module 'amatistadigitalApp'

  CreativeprocessCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CreativeprocessCtrl = $controller 'CreativeprocessCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
