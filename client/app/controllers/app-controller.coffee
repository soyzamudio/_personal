angular.module 'app.controllers'
  .controller 'AppController', ng ($scope, Utils) ->
    $scope.loaded = true
    $scope.everythingLoaded = ->
      Utils.delay 2500, ->
        $scope.loaded = true
