(function() {
  angular.module('app.services').factory('Utils', ['$timeout', function($timeout) {
    return {
      delay: function(time, fn) {
        return $timeout(fn, time);
      }
    };
  }]);

}).call(this);

//# sourceMappingURL=../../app/helpers/utils.js.map