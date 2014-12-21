#===============================================================================
# grunt-contrib-clean
#
# Removes files and folders.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "clean",
    dev: [
      ".tmp/public/**"
      ".tmp/icons/font/icons.html"
      ".tmp/icons/svg/**/*"
      "assets/images/sprite*.png"
    ]
    build: ["www"]
    db: [".db/**/*", "!.db/.keep"]
    prod: [
      ".tmp/public/concat"
      ".tmp/public/js"
      ".tmp/public/tests"
      ".tmp/public/styles"
    ]

  grunt.loadNpmTasks "grunt-contrib-clean"