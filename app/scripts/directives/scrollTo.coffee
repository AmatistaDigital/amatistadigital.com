'use strict'

angular.module('amatistadigitalApp').directive 'scrollTo', ->
  restrict : 'A'
  link     : (scope, element, attrs) ->

    # Scroll to an element.
    scrollTo = (dest, duration) ->

      return false if duration < 0

      difference = dest.offsetTop - document.body.scrollTop
      step       = difference / duration * 10

      setTimeout ->
        position = document.body.scrollTop + step
        document.body.scrollTop = position if position >= 0
        scrollTo dest, duration - 10

    # Scroll to the element on click.
    element.on 'click', -> scrollTo document.getElementById(attrs.scrollTo), 750
