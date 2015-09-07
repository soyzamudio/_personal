(function() {
  var indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  angular.module('app.components').controller('PortfolioController', ['$scope', function($scope) {
    $scope.type = 'all';
    $scope.menu = ['all', 'web', 'mobile'];
    $scope.bricks = [
      {
        title: 'Scrimmagr',
        type: ['mobile'],
        src: 'http://josezamudio.me/img/scrimmagr-app.jpg'
      }, {
        title: 'ECCO',
        type: ['web'],
        src: 'http://josezamudio.me/img/ecco-app.jpg'
      }, {
        title: 'CarWise',
        type: ['mobile'],
        src: 'http://josezamudio.me/img/carwise-app.jpg'
      }, {
        title: 'AirTym',
        type: ['mobile', 'web'],
        src: 'http://josezamudio.me/img/airtym-app.jpg'
      }, {
        title: 'Tweeter Board',
        type: ['web'],
        src: 'http://josezamudio.me/img/tweeterboard-app.jpg'
      }, {
        title: 'Open Market',
        type: ['web'],
        src: 'http://josezamudio.me/img/openmarket-app.jpg'
      }, {
        title: 'Hstl',
        type: ['web'],
        src: 'http://josezamudio.me/img/hstl-app.jpg'
      }
    ];
    $scope.selectType = function(type) {
      return $scope.type = type;
    };
    return $scope.displayBrick = function(type) {
      var ref;
      if ($scope.type === 'all') {
        return true;
      }
      if (ref = $scope.type, indexOf.call(type, ref) >= 0) {
        return true;
      } else {
        return false;
      }
    };
  }]);

}).call(this);

//# sourceMappingURL=../../../app/components/portfolio/portfolio.js.map