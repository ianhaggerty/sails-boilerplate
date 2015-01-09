#===============================================================================
# syncAssets.coffee
#
# This task compiles .jade client side templates and .scss files to `.tmp`, and
# copies anything else found under `assets`.
#===============================================================================


module.exports = (grunt) ->
	grunt.registerTask "syncAssets", [
		"concurrent:syncAssets"
	]