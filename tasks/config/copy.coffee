#===============================================================================
# grunt-contrib-copy
#
# Copy files and folders.
#===============================================================================

module.exports = (grunt) ->
	grunt.config.set "copy",
		dev:
			files: [
				expand: true
				cwd: "./assets"
				src: [
          "**/*.!(scss|less|coffee)"
          "!images/icons/**/*"
          "!images/sprite/**/*"
        ]
				dest: ".tmp/public"
			]

		build:
			files: [
				expand: true
				cwd: ".tmp/public"
				src: [
          "**/*"
          "!js/**/*"
          "!concat/**/*"
          "!styles/**/*"
          "!tests/**/*"
        ]
				dest: "www"
			]

	grunt.loadNpmTasks "grunt-contrib-copy"