#===============================================================================
# grunt-contrib-jade
#
# Compiles jade templates to html.
#===============================================================================

module.exports = (grunt)->
  grunt.config.set "jade",
    dev:
      options:
        client    : true
        namespace : "JST"

      src     : require("../pipeline").templateFilesToInject
      dest    : '.tmp/public/jst.js'

  grunt.loadNpmTasks 'grunt-contrib-jade'