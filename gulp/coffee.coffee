gulp = require 'gulp'
$ = require('gulp-load-plugins')()

gulp.task 'coffee', ->
  gulp
    .src 'client/app/**/*.coffee'
    .pipe $.cached 'coffee'
    .pipe $.sourcemaps.init()
    .pipe $.coffee()
    .pipe $.angularInjector()
    .pipe $.sourcemaps.write '../app'
    .pipe gulp.dest 'build/app'
    .pipe $.size()
