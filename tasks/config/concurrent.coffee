#===============================================================================
# grunt-contrib-shell
#
# Runs grunt tasks concurrently, speeding up build times.
#===============================================================================

module.exports = (grunt) ->

  opts =
    logConcurrentOutput: true
    limit: 8

  grunt.config.set "concurrent",
    watchAll:
      tasks: [
        "watch:assets"
        "watch:icons"
        "watch:sprites"
        "compass:watch"
      ]
      options: opts

    icons:
      tasks: [
        "svgstore:default"
        "webfont:icons"
      ]
      options: opts

    compileAssets:
      tasks: [
        "svgstore:default"
        "webfont:icons"
        "jade:dev"
        "coffee:dev"
      ]
      options: opts

    syncAssets:
      tasks: [
        "jade:dev"
        "sync:dev"
        "coffee:dev"
      ]
      options: opts

    start:
      tasks: [
        "shell:mongodb"
        "nodemon:sails"
        "browserSync:bsFiles"
      ]
      options: opts

    debug:
      tasks: [
        "shell:mongodb"
        "shell:debug"
      ]
      options: opts

  grunt.loadNpmTasks "grunt-concurrent"