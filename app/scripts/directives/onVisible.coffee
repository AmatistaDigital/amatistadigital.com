'use strict'

angular.module('amatistadigitalApp').directive 'onVisible', ->
  restrict : 'A'
  link     : (scope, element, attrs) ->

    # Check if the element is visible on viewport.
    isVisible = ->

      # Get element position.
      rect = element[0].getBoundingClientRect()
      heightPortion = if attrs.onVisibleTrigger is 'middle' then rect.height * 0.5 else 0
      visible = null

      switch attrs.onVisibleTrigger
        when 'topWindow' then visible = rect.top <= 0 and rect.bottom >= 0
        else visible = (rect.top + heightPortion) <= window.innerHeight

      scope.$apply attrs.onVisible if visible

    # Check isVisible() when scroll, resize and load.
    document.addEventListener 'DOMContentLoaded', isVisible, false
    document.addEventListener 'load', isVisible, false
    document.addEventListener 'scroll', isVisible, false
    document.addEventListener 'resize', isVisible, false
