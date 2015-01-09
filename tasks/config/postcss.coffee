#===============================================================================
# grunt-postcss
#
# Runs post processing tasks on compiled css files.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "postcss",
    options:
      processors: [
        require('autoprefixer-core')( browsers: ['last 4 version'] ).postcss
      ]
    dist:
      src: '.tmp/public/styles/**/*.css'

  grunt.loadNpmTasks "grunt-postcss"