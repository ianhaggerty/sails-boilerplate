module.exports = (grunt) ->
	grunt.registerTask "compileAssets", [
		"clean:dev"
		"jade:dev"
		"compass:dev"
		"copy:dev"
		"coffee:dev"
	]