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