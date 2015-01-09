#===============================================================================
# development.coffee
#
# Development oriented tasks.
#===============================================================================

module.exports = (grunt) ->

  grunt.registerTask "watchAll", [
    "compileAssets"
    "linkAssets"
    "concurrent:watchAll"
  ]
  grunt.registerTask "buildDev", [
    "compileAssets"
    "linkAssets"
  ]
  grunt.registerTask "bootDev", [
    "clean:db"
    "concurrent:start"
  ]
  grunt.registerTask "debug", [
    "clean:db"
    "concurrent:debug"
  ]
  grunt.registerTask "default", [] # make sails happy