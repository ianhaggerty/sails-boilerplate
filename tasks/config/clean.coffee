#===============================================================================
# grunt-contrib-clean
#
# Removes files and folders.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "clean",
    dev: [".tmp/public/**"]
    build: ["www"]
    db: [".db/**/*", "!.db/.keep"]
    prod: [
      ".tmp/public/concat"
      ".tmp/public/js"
      ".tmp/public/tests"
      ".tmp/public/styles"
    ]

  grunt.loadNpmTasks "grunt-contrib-clean"