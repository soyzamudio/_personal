gulp = require 'gulp'
$ = require('gulp-load-plugins')(
  rename:
    'gulp-image-optimization': 'imageop'
)

gulp.task 'images', ->
  gulp.src [
    'client/assets/**/*.png'
    'client/assets/**/*.jpg'
    'client/assets/**/*.gif'
    'client/assets/**/*.jpeg'
  ]
    .pipe $.imageop
      optimizationLevel: 5
      progressive: true
      interlaced: true
    .pipe gulp.dest './build/assets'
