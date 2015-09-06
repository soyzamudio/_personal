gulp = require 'gulp'
$ = require('gulp-load-plugins')()

gulp.task 'inject', ->
  gulp
    .src './build/index.html'
    .pipe $.inject gulp.src('build/app/**/*.js', read: false),
      relative: true
      transform: (filepath) ->
        filepath = filepath.replace '/build/', '/'
        $.inject.transform.apply $.inject.transform, arguments
    .pipe $.inject gulp.src('build/assets/**/*.css', read: false),
      relative: true
      transform: (filepath) ->
        filepath = filepath.replace '/build/', '/'
        $.inject.transform.apply $.inject.transform, arguments
    .pipe gulp.dest './build'
    .pipe $.size()
