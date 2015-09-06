angular.module 'app.directives'
  .directive 'elemReady', ng ($parse) ->
    restrict: 'A'
    link: ($scope, elem, attrs) ->
      elem.ready ->
        $scope.$apply ->
          func = $parse attrs.elemReady
          func $scope
