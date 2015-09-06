gulp = require 'gulp'
$ = require('gulp-load-plugins')()

gulp.task 'watch', ->
  gulp.watch 'client/**/*.scss', ['scss', 'inject']
  gulp.watch 'client/**/*.coffee', ['coffee', 'inject']
  gulp.watch 'client/**/*.html', ['copy', 'inject']
