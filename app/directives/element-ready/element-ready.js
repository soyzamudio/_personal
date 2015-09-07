(function() {
  angular.module('app.directives').directive('elemReady', ['$parse', function($parse) {
    return {
      restrict: 'A',
      link: function($scope, elem, attrs) {
        return elem.ready(function() {
          return $scope.$apply(function() {
            var func;
            func = $parse(attrs.elemReady);
            return func($scope);
          });
        });
      }
    };
  }]);

}).call(this);

//# sourceMappingURL=../../../app/directives/element-ready/element-ready.js.map