#===============================================================================
# grunt-contrib-coffee
#
# Compile CoffeeScript files to JavaScript.
#===============================================================================

module.exports = (grunt) ->
	grunt.config.set "coffee",
		dev:
			options:
				bare: true

			files: [
				{
					expand: true
					cwd: "assets/"
					src: ["**/*.coffee"]
					dest: ".tmp/public/"
					ext: ".js"
				}
				{
					expand: true
					cwd: "assets/"
					src: ["**/*.coffee"]
					dest: ".tmp/public/"
					ext: ".js"
				}
			]

	grunt.loadNpmTasks "grunt-contrib-coffee"