(function() {
  angular.module('app.controllers').controller('AppController', ['$scope', 'Utils', function($scope, Utils) {
    $scope.loaded = true;
    return $scope.everythingLoaded = function() {
      return Utils.delay(2500, function() {
        return $scope.loaded = true;
      });
    };
  }]);

}).call(this);

//# sourceMappingURL=../../app/controllers/app-controller.js.map