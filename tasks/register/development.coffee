#===============================================================================
# development.coffee
#
# Registers a 'watch-all' task, which compiles and watches for file changes, as
# well as a 'boot-dev' task, which launches mongodb, sails and a browser-sync
# proxy.
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