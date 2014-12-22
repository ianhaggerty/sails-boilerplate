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
        "tasks/pipeline.js" # injector needs to re-run
        "!assets/images/icons/**/*" # handled by webfont
        "!assets/images/sprites/**/*" # handled by compass
        "!assets/**/*.scss" # handled by compass
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

    bower:
      files: [
        "bower_components/**/*"
      ]

      tasks: [
        "bower:dev"
      ]

  grunt.loadNpmTasks "grunt-contrib-watch"