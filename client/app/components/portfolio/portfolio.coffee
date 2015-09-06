angular.module 'app.components'
  .controller 'PortfolioController', ng ($scope) ->
    $scope.type = 'all'

    $scope.menu = [
      'all'
      'web'
      'mobile'
    ]

    $scope.bricks = [
      { title: 'Scrimmagr', type: ['mobile'], src: 'http://josezamudio.me/img/scrimmagr-app.jpg' }
      { title: 'ECCO', type: ['web'], src: 'http://josezamudio.me/img/ecco-app.jpg' }
      { title: 'CarWise', type: ['mobile'], src: 'http://josezamudio.me/img/carwise-app.jpg' }
      { title: 'AirTym', type: ['mobile', 'web'], src: 'http://josezamudio.me/img/airtym-app.jpg' }
      { title: 'Tweeter Board', type: ['web'], src: 'http://josezamudio.me/img/tweeterboard-app.jpg' }
      { title: 'Open Market', type: ['web'], src: 'http://josezamudio.me/img/openmarket-app.jpg' }
      { title: 'Hstl', type: ['web'], src: 'http://josezamudio.me/img/hstl-app.jpg' }
    ]

    $scope.selectType = (type) ->
      $scope.type = type

    $scope.displayBrick = (type) ->
      return true if $scope.type is 'all'
      if $scope.type in type then return true else return false
