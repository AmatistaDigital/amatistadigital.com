'use strict'

angular.module('amatistadigitalApp').controller 'MainCtrl', ($location, $anchorScroll) ->

  # Sections list.
  @sections = [
    id   : 'intro',
    name : 'Inicio'
  ,
    id   : 'creative-process',
    name : 'Proceso Creativo'
  ,
    id   : 'our-powers',
    name : 'Nuestros Poderes'
  ,
    id   : 'laboratory',
    name : 'Laboratorio'
  ]

  # Set active section as first sections item.
  @activeSection = @sections[0].id

  # Return controller API.
  return @
