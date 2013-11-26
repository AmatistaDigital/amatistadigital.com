'use strict'

angular.module('amatistadigitalApp').directive 'contentArea', ->
  restrict : 'E'
  template : '<div ng-include="template"></div>'
  replace  : true
  link     : (scope, element, attrs) ->

    # Build template URL.
    scope.template = "templates/views/#{ scope.$eval attrs.name }.html"
