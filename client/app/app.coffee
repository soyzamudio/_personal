angular.module 'app.services', []
angular.module 'app.directives', []
angular.module 'app.components', []
angular.module 'app.pages', []
angular.module 'app.controllers', []
angular.module 'app', [
  # Angular modules
  'ngAnimate'
  'ngScrollTo'

  # Our container modules
  'app.services'
  'app.directives'
  'app.components'
  'app.pages'
  'app.controllers'
]
