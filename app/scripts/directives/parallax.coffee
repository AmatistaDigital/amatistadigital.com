'use strict'

angular.module('amatistadigitalApp').directive 'parallax', ->
  restrict : 'EA'
  link     : (scope, element, attrs) ->

    new Parallax element[0]
