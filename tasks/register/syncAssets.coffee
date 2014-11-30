module.exports = (grunt) ->
	grunt.registerTask "syncAssets", [
		"jade:dev"
		"sync:dev"
		"coffee:dev"
	]