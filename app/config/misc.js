(function() {
  angular.module('app').config(['ngScrollToOptionsProvider', function(ngScrollToOptionsProvider) {
    return ngScrollToOptionsProvider.extend({
      handler: function(el) {
        return $(el).scrollintoview();
      }
    });
  }]);

}).call(this);

//# sourceMappingURL=../../app/config/misc.js.map