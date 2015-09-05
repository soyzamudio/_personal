gulp = require 'gulp'

gulp.task 'default', [
  'copy'
  'scss'
  'coffee'
  'inject'
  'watch'
]
