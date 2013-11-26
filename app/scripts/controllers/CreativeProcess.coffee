'use strict'

angular.module('amatistadigitalApp').controller 'CreativeprocessCtrl', ->

  # Creative process steps.
  @list  = [
    image       : 'necesity'
    name        : 'Necesidades'
    description : 'No hacemos desarrollos bonitos, hacemos desarrollos efectivos, funcionales e impactantes que se acoplen a sus objetivos y alcance.'
  ,
    image       : 'research'
    name        : 'Investigación'
    description : 'Nuestro equipo de desarrolladores está en constante investigación para tener siempre un portafolio de nuevas tecnologías al servicio de cualquier proyecto.
'
    inverse : true
  ,
    image       : 'development'
    name        : 'Desarrollo'
    description : 'Aquí la experiencia, el mejor talento y la visión se encuentran para darle vida a sus ideas en un proceso en conjunto de un equipo enfocado en entregar productos de alta calidad.
'
    big   : true
  ,
    image       : 'testing'
    name        : 'Pruebas'
    description : 'Cada pixel, cada línea de código pasa por un riguroso control de calidad para garantizar un producto final inigualable.'
  ,
    image       : 'delivery'
    name        : 'Entrega'
    description : 'Usted se encuentra a un paso de convertir su idea en una “piedra preciosa”, con servicios competentes a nivel mundial para desplegarse en cualquier parte del mundo.'
    inverse : true
  ]

  # Return controller API.
  return @
