angular.module 'app'
  .controller 'ContactController', ng ($scope, $modal) ->
    $scope.openEmail = ->
      modalInstance = $modal.open
        animation: true
        templateUrl: 'app/modals/contact/contact.html'
        controller: 'ContactModalController'
        windowClass: 'center-modal'
