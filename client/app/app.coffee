angular.module 'app.services', []
angular.module 'app.directives', []
angular.module 'app.components', []
angular.module 'app.modals', []
angular.module 'app.controllers', []
angular.module 'app', [
  # Angular modules
  'ngAnimate'
  'ngScrollTo'
  'ui.bootstrap'

  # Our container modules
  'app.services'
  'app.directives'
  'app.components'
  'app.modals'
  'app.controllers'
]
