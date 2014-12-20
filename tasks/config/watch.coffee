#===============================================================================
# grunt-contrib-watch
#
# Runs predefined tasks whenever watched file patterns are added, changed or
# deleted.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "watch",
    api:

    # API files to watch:
      files: ["api/**/*"]

    assets:

    # Assets to watch:
      files: [
        "assets/**/*"
        "tasks/pipeline.js"
        "!assets/images/icons/**/*"
        "!assets/images/sprites/**/*"
      ].concat(
        require("../pipeline").templateFilesToInject
      )

    # When assets are changed:
      tasks: [
        "syncAssets"
        "linkAssets"
      ]

    icons:

      files: [
        "assets/images/icons/**/*"
      ]

      tasks: [
        "concurrent:icons"
      ]

    sprites:

      files: [
        "assets/images/sprites/**/*"
      ]

      tasks: [
        "compass:dev"
      ]

  grunt.loadNpmTasks "grunt-contrib-watch"