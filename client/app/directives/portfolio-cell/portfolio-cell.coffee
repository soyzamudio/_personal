angular.module 'app.directives'
  .directive 'portfolioCell', ng () ->
    restrict: 'E'
    templateUrl: 'app/directives/portfolio-cell/portfolio-cell.html'
    bindToController: true
    controllerAs: 'view'
    scope:
      item: '='
    controller: ->
