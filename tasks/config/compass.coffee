#===============================================================================
# grunt-contrib-compass
#
# Compile compass SCSS files to CSS.
#===============================================================================

module.exports = (grunt) ->
	grunt.config.set "compass",
		dev:
			options:
				config: "tasks/config/compass.rb"

		watch:
			options:
				config: "tasks/config/compass.rb"
				watch: true

	grunt.loadNpmTasks "grunt-contrib-compass"