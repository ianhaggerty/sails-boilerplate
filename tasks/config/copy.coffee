###
Copy files and folders
###
module.exports = (grunt) ->
	grunt.config.set "copy",
		dev:
			files: [
				expand: true
				cwd: "./assets"
				src: ["**/*.!(scss|less|coffee)"]
				dest: ".tmp/public"
			]

		build:
			files: [
				expand: true
				cwd: ".tmp/public"
				src: ["**/*"]
				dest: "www"
			]

	grunt.loadNpmTasks "grunt-contrib-copy"