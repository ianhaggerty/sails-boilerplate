#===============================================================================
# grunt-contrib-uglify
#
# Minifies js files.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "uglify",
    dist:
      src: [".tmp/public/concat/production.js"]
      dest: ".tmp/public/min/production.min.js"

    tpl:
      src: ".tmp/public/jst.js"
      dest: ".tmp/public/jst.js"

  grunt.loadNpmTasks "grunt-contrib-uglify"