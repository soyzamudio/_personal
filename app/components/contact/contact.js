(function() {
  angular.module('app').controller('ContactController', ['$scope', '$modal', function($scope, $modal) {
    return $scope.openEmail = function() {
      var modalInstance;
      return modalInstance = $modal.open({
        animation: true,
        templateUrl: 'app/modals/contact/contact.html',
        controller: 'ContactModalController',
        windowClass: 'center-modal'
      });
    };
  }]);

}).call(this);

//# sourceMappingURL=../../../app/components/contact/contact.js.map