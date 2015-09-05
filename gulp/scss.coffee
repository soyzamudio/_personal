gulp = require 'gulp'
$ = require('gulp-load-plugins')()

gulp.task 'scss', ->
  gulp
    .src [
      'client/scss/main.scss'
    ]
    .pipe $.sourcemaps.init()
    .pipe $.sass
      outputStyle: 'expanded'
      includePaths: require('node-bourbon').includePaths
    .pipe $.autoprefixer
      browsers: ['last 2 versions']
      cascade: false
    .pipe $.cssCacheBust()
    .pipe $.sourcemaps.write '../assets'
    .pipe $.rename (path) ->
      path.basename = path.basename.replace 'main', 'zamudio'
      path
    .pipe gulp.dest 'build/assets'
    .pipe $.size()
