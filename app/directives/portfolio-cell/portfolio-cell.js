(function() {
  angular.module('app.directives').directive('portfolioCell', function() {
    return {
      restrict: 'E',
      templateUrl: 'app/directives/portfolio-cell/portfolio-cell.html',
      bindToController: true,
      controllerAs: 'view',
      scope: {
        item: '='
      },
      controller: function() {}
    };
  });

}).call(this);

//# sourceMappingURL=../../../app/directives/portfolio-cell/portfolio-cell.js.map