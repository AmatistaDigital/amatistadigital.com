'use strict'

angular.module('amatistadigitalApp').controller 'OurpowersCtrl', ->

  # Powers list.
  @list  = [
    image       : 'webdev'
    name        : 'Websites & Web Apps'
    description : 'Desarrollamos el sitio de tu empresa o sistema interno'
  ,
    image       : 'mobiledev'
    name        : 'Desarrollo para móvil'
    description : 'Aplicaciones para iOS y Android'
  ,
    image       : 'ecommerce'
    name        : 'E-commerce'
    description : 'Te creamos tu tienda online para que puedas vender tus productos'
  ,
    image       : 'compatible'
    name        : 'Compatibilidad'
    description : 'Nuestras creaciones son visibles en todos los navegadores del mercado'
  ]

  # Return controller API.
  return @
