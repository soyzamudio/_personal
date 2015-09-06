angular.module 'app.services'
  .factory 'Utils', ng ($timeout) ->
    delay: (time, fn) ->
      $timeout fn, time
