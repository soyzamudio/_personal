(function() {
  angular.module('app').controller('NavbarController', ['$scope', function($scope) {
    $scope.active = 'home';
    $scope.menu = ['home', 'portfolio', 'experience', 'contact'];
    return $scope.selectMenu = function(item) {
      $scope.active = item;
      $('.navbar-collapse').collapse('hide');
      return true;
    };
  }]);

}).call(this);

//# sourceMappingURL=../../../app/components/navbar/navbar.js.map