#===============================================================================
# prod.coffee
#
# Registers a 'watch-all' task, which compiles and watches for file changes, as
# well as a 'boot-dev' task, which launches mongodb, sails and a browser-sync
# proxy.
#===============================================================================

module.exports = (grunt) ->
  grunt.registerTask "buildProd", [
    "compileAssets"
    "concat"
    "uglify"
    "cssmin"
    "sails-linker:prodJs"
    "sails-linker:prodStyles"
    "sails-linker:devTpl"
    "sails-linker:prodJsJade"
    "sails-linker:prodStylesJade"
    "sails-linker:devTplJade"
    "clean:prod"
  ]

  grunt.registerTask "bootProd", [

  ]

  grunt.registerTask "prod", [] # make sails happy