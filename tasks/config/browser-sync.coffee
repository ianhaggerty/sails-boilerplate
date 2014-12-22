#===============================================================================
# grunt-browser-sync
#
# Set's up a proxy server for live reloading of web pages.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "browserSync",
    bsFiles:
      src: [
        '.tmp/public/**/*'
        'views/**/*'
      ]
    options:
      proxy: "localhost:1337"


  grunt.loadNpmTasks('grunt-browser-sync')