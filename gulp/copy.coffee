gulp = require 'gulp'
$ = require('gulp-load-plugins')()

gulp.task 'copy', ->
  copyPaths = [
    'client/**/*.html'
    'client/assets/**/*.otf'
  ]
  gulp
    .src copyPaths
    .pipe $.copy './build', prefix: 1
    .pipe $.size()
