#===============================================================================
# grunt-svgstore
#
# Minify and concatenate svg files to a single svg file.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "svgstore",
    options:
      prefix: 'icon-svg__'
      formatting:
        indent_size: 2
      svg:
        style: 'display: none'
      includedemo: true
    default:
      files:
        '.tmp/icons/svg/icons.svg': 'assets/images/icons/**/*.svg'

  grunt.loadNpmTasks('grunt-svgstore')