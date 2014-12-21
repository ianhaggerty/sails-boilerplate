#===============================================================================
# grunt-bower
#
# Integrates bower into the sails build system.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "bower",
    dev:
      dest: '.tmp/public'
      js_dest: '.tmp/public/js/dependencies'
      css_dest: '.tmp/public/styles/dependencies'
      fonts_dest: '.tmp/public/fonts'

      options:
        packageSpecific:
          json2:
            files: ['json2.js']
#          'sails.io.js':
#            files: ['sails.io.js']
#          'socket.io-client':
#            files: ['socket.io.js']


  grunt.loadNpmTasks('grunt-bower')