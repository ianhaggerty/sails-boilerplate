#===============================================================================
# linkAssets.coffee
#
# This uses `pipeline.coffee` to inject files into the jade templates under
# `views` in the source order specified (specifically, layout.jade).
#===============================================================================

module.exports = (grunt) ->
	grunt.registerTask "linkAssets", [
		"sails-linker:devJs"
		"sails-linker:devStyles"
		"sails-linker:devTpl"
		"sails-linker:devJsJade"
		"sails-linker:devStylesJade"
		"sails-linker:devTplJade"
		"sails-linker:testJsJade"
		"sails-linker:testStylesJade"
	]