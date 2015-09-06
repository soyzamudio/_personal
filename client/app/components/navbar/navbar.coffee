angular.module 'app'
  .controller 'NavbarController', ng ($scope) ->
    $scope.active = 'home'
    $scope.menu = [
      'home'
      'portfolio'
      'experience'
      'contact'
    ]
    $scope.selectMenu = (item) ->
      $scope.active = item
      $('.navbar-collapse').collapse 'hide'
      return true
