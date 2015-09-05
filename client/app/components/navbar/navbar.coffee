angular.module 'app'
  .controller 'NavbarController', ng ($scope) ->
    $scope.active = 'home'
    $scope.menu = [
      'home'
      'work'
      'experience'
      'contact'
    ]
    $scope.selectMenu = (item) ->
      $scope.active = item
      $('.navbar-collapse').collapse 'hide'
