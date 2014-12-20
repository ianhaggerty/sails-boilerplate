module.exports = (grunt) ->
	grunt.registerTask "syncAssets", [
		"concurrent:syncAssets"
	]