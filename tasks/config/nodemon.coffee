#===============================================================================
# grunt-nodemon
#
# Reboots sails server on server side changes.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "nodemon",
    sails:
      script: 'app.js'
      options:
        ext: 'js,coffee'
        watch: ['config', 'api']

  grunt.loadNpmTasks('grunt-nodemon')