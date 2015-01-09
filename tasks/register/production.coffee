#===============================================================================
# prod.coffee
#
# Production oriented generic tasks.
#===============================================================================

module.exports = (grunt) ->
  
  ### buildProd ###
  
  grunt.registerTask "buildProd", [
    "compileAssets"
    "htmlmin:svgIcons"
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

  
  # This is here since sails calls it by default
  grunt.registerTask "prod", []