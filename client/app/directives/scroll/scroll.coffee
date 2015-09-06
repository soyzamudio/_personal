angular.module 'app.directives'
  .directive 'scroll', ng ($window) ->
    restrict: 'A'
    link: (scope, element, attrs) ->
