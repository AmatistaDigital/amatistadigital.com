'use strict'

angular.module('amatistadigitalApp').directive 'contentArea', ->
  restrict : 'E'
  template : '<div><div ng-include="template"></div></div>'
  replace  : true
  link     : (scope, element, attrs) ->

    # Build template URL.
    scope.template = "templates/views/#{ scope.$eval attrs.name }.html"

    # Add an anchor with the section ID.
    element.prepend "<a id=\"#{ scope.$eval attrs.name }\"></a>"
