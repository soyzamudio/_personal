angular.module 'app.components'
  .controller 'PortfolioController', ng ($scope) ->
    $scope.type = 'all'

    $scope.menu = [
      'all'
      'web'
      'mobile'
    ]

    $scope.bricks = [
      { src: 'http://lorempixel.com/g/280/123/?6167', type: 'mobile', title: 'Something' }
      { src: 'http://lorempixel.com/g/280/188/?2299', type: 'web', title: 'Something' }
      { src: 'http://lorempixel.com/g/280/224/?4775', type: 'mobile', title: 'Something' }
      { src: 'http://lorempixel.com/g/280/424/?4591', type: 'web', title: 'Something' }
      { src: 'http://lorempixel.com/g/280/322/?3958', type: 'web', title: 'Something' }
      { src: 'http://lorempixel.com/g/280/554/?3459', type: 'web', title: 'Something' }
      { src: 'http://lorempixel.com/g/280/432/?9578', type: 'mobile', title: 'Something' }
      { src: 'http://lorempixel.com/g/280/365/?2348', type: 'web', title: 'Something' }
      { src: 'http://lorempixel.com/g/280/765/?4534', type: 'mobile', title: 'Something' }
      { src: 'http://lorempixel.com/g/280/456/?1984', type: 'web', title: 'Something' }
    ]

    $scope.selectType = (type) ->
      $scope.type = type

    $scope.displayBrick = (type) ->
      return true if $scope.type is 'all'
      if $scope.type is type then return true else return false
