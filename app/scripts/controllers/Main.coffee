'use strict'

angular.module('amatistadigitalApp').controller 'MainCtrl', ->

  # Sections list.
  @sections = [
    'intro'
    'creative-process'
    'our-powers'
    'laboratory'
    'footer'
  ]

  @changeActiveSection = (section) ->
    console.log section

  # Return controller API.
  return @
