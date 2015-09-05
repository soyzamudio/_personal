angular.module 'app'
  .config ng (ngScrollToOptionsProvider) ->
    ngScrollToOptionsProvider.extend
      handler: (el) ->
        $(el).scrollintoview()
