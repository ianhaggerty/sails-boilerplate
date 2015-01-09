#===============================================================================
# compileAssets.coffee
#
# This task compiles svg & font icons, jade templates (client side), coffeescript
# files, scss files, copies relevant bower files and copies anything else found
# under `.assets`.
#===============================================================================


module.exports = (grunt) ->
	grunt.registerTask "compileAssets", [
		"clean:dev"
    "concurrent:compileAssets"
    "compass:dev"
    "postcss"
    "copy:dev"
	]