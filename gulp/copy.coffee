gulp = require 'gulp'
$ = require('gulp-load-plugins')()

gulp.task 'copy', ->
  copyPaths = [
    'client/**/*.html'
    'client/assets/**/*.otf'
    'client/assets/**/*.jpeg'
    'client/assets/**/*.jpg'
    'client/assets/**/*.png'
    'client/assets/**/*.gif'
  ]
  gulp
    .src copyPaths
    .pipe $.copy './build', prefix: 1
    .pipe $.size()
