(function(){"use strict";angular.module("amatistadigitalApp",[])}).call(this),function(){"use strict";angular.module("amatistadigitalApp").directive("onVisible",function(){return{restrict:"A",link:function(a,b,c){var d;return d=function(){var d,e,f;switch(e=b[0].getBoundingClientRect(),d="middle"===c.onVisibleTrigger?.5*e.height:0,f=null,c.onVisibleTrigger){case"topWindow":f=e.top<=0&&e.bottom>=0;break;default:f=e.top+d<=window.innerHeight}return f?a.$apply(c.onVisible):void 0},document.addEventListener("DOMContentLoaded",d,!1),document.addEventListener("load",d,!1),document.addEventListener("scroll",d,!1),document.addEventListener("resize",d,!1)}}})}.call(this),function(){"use strict";angular.module("amatistadigitalApp").controller("MainCtrl",function(){return this.sections=["intro","creative-process","our-powers","laboratory","footer"],this.changeActiveSection=function(a){return console.log(a)},this})}.call(this),function(){"use strict";angular.module("amatistadigitalApp").controller("CreativeprocessCtrl",function(){return this.list=[{image:"necesity",name:"Necesidades",description:"No hacemos desarrollos bonitos, hacemos desarrollos efectivos, funcionales e impactantes que se acoplen a sus objetivos y alcance."},{image:"research",name:"Investigación",description:"Nuestro equipo de desarrolladores está en constante investigación para tener siempre un portafolio de nuevas tecnologías al servicio de cualquier proyecto.",inverse:!0},{image:"development",name:"Desarrollo",description:"Aquí la experiencia, el mejor talento y la visión se encuentran para darle vida a sus ideas en un proceso en conjunto de un equipo enfocado en entregar productos de alta calidad.",big:!0},{image:"testing",name:"Pruebas",description:"Cada pixel, cada línea de código pasa por un riguroso control de calidad para garantizar un producto final inigualable."},{image:"delivery",name:"Entrega",description:"Usted se encuentra a un paso de convertir su idea en una “piedra preciosa”, con servicios competentes a nivel mundial para desplegarse en cualquier parte del mundo.",inverse:!0}],this})}.call(this),function(){"use strict";angular.module("amatistadigitalApp").directive("contentArea",function(){return{restrict:"E",template:'<div ng-include="template"></div>',replace:!0,link:function(a,b,c){return a.template="templates/views/"+a.$eval(c.name)+".html"}}})}.call(this),function(){"use strict";angular.module("amatistadigitalApp").controller("OurpowersCtrl",function(){return this.list=[{image:"webdev",name:"Websites & Web Apps",description:"Desarrollamos el sitio de tu empresa o sistema interno"},{image:"mobiledev",name:"Desarrollo para móvil",description:"Aplicaciones para iOS y Android"},{image:"ecommerce",name:"E-commerce",description:"Te creamos tu tienda online para que puedas vender tus productos"},{image:"compatible",name:"Compatibilidad",description:"Nuestras creaciones son visibles en todos los navegadores del mercado"}],this})}.call(this),function(){"use strict";angular.module("amatistadigitalApp").directive("parallax",function(){return{restrict:"EA",link:function(a,b){return new Parallax(b[0])}}})}.call(this),angular.module("amatistadigitalApp").run(["$templateCache",function(a){a.put("app/templates/views/creative-process.html",'<section class="creative-process" ng-controller="CreativeprocessCtrl as creativeProcess">\n  <div class="container">\n    <h2 class="section-title">Todo empieza aquí</h2>\n\n    <section class="process">\n      <article class="process-item" on-visible="item.visible = true" on-visible-trigger="middle" ng-repeat="item in creativeProcess.list" ng-class="{ inverse : item.inverse, big : item.big, visible : item.visible }">\n        <figure class="process-logo" ng-hide="item.inverse">\n          <img alt="{{ item.name }}" ng-src="images/creative-process/{{ item.image }}.png" />\n        </figure>\n\n        <div class="process-info">\n          <h2>{{ item.name }}</h2>\n          <p>{{ item.description }}</p>\n        </div>\n\n        <figure class="process-logo" ng-show="item.inverse">\n          <img src="" alt="{{ item.name }}" ng-src="images/creative-process/{{ item.image }}.png" />\n        </figure>\n      </article>\n\n      <img src="images/creative-process/end.png" alt="Proceso Creativo" class="process-end" on-visible="creativeProcess.end = true" ng-class="{ visible : creativeProcess.end }">\n    </section>\n  </div>\n</section>\n'),a.put("app/templates/views/footer.html",'<footer class="footer">\n  <div class="container">\n\n    <div class="brand">Amatista Digital</div>\n    <div class="contact">\n\n      <div class="contact-info">\n        <h4 class="contact-title">Amatista Digital S.A.</h4>\n\n        <table class="contact-data">\n          <tr>\n            <td>Email:</td>\n            <td>info@amatistadigital.com</td>\n          </tr>\n          <tr>\n            <td>Teléfono:</td>\n            <td>(+506) 8888-8888</td>\n          </tr>\n          <tr>\n            <td>Ubicación:</td>\n            <td>San José, Costa Rica</td>\n          </tr>\n        </table>\n\n        <a href="mailto:info@amatistadigital.com" class="btn btn-primary">Contáctenos</a>\n        <a href="http://www.facebook.com/amatistadigitalcr" target="_blank" class="btn btn-facebook"><div class="icon"></div></a>\n        <a href="http://twitter.com" target="_blank" class="btn btn-twitter"><div class="icon"></div></a>\n      </div>\n\n    </div>\n  </div>\n\n  <p class="disclaimer">&copy;2013 Amatista Digital S.A. | San José, Costa Rica | info@amatistadigital.com</p>\n</footer>\n\n'),a.put("app/templates/views/intro.html",'<header class="page-header">\n  <div class="container">\n    <h1 class="brand">Amatista Digital</h1>\n  </div>\n</header>\n\n<section class="intro">\n  <div class="intro-bg-container" parallax="">\n    <div class="intro-bg layer" data-depth="0.2"></div>\n  </div>\n\n  <div class="container" on-visible="introVisible = true" on-visible-trigger="top" ng-class="{ visible : introVisible }">\n    <div class="diamond"></div>\n    <h2 class="title">De una simple roca, a una piedra preciosa.</h2>\n  </div>\n</section>\n'),a.put("app/templates/views/laboratory.html",'<section class="laboratory">\n  <div class="container">\n\n    <h2 class="section-title">Nuestro laboratorio</h2>\n    <p class="section-description">Conoce más de nuestros proyectos y startups.</p>\n\n    <article class="laboratory-item" ng-repeat="article in [1,2,3,4,5,6]">\n      <div class="gears">\n        <div class="small"></div>\n        <div class="big"></div>\n      </div>\n      <div class="item-content"></div>\n    </article>\n\n  </div>\n</section>\n'),a.put("app/templates/views/our-powers.html",'<section class="our-powers" ng-controller="OurpowersCtrl as powers">\n  <div class="container">\n    <h2 class="section-title inverse">Nuestros poderes</h2>\n  </div>\n\n  <section class="powers-list">\n    <article class="power" ng-repeat="power in powers.list">\n      <figure class="power-logo"><img ng-src="images/powers/{{ power.image }}.png" alt="{{ power.name }}"></figure>\n      <h4 class="power-name">{{ power.name }}</h4>\n      <p class="power-description">{{ power.description }}</p>\n    </article>\n  </section>\n</section>\n')}]);