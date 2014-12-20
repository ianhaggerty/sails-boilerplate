module.exports = (grunt) ->
	grunt.registerTask "compileAssets", [
		"clean:dev"
    "concurrent:compileAssets"
    "compass:dev"
    "copy:dev"
	]