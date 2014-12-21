#===============================================================================
# grunt-contrib-htmlmin
#
# Minifies html files.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "htmlmin",
    svgIcons:
      options:
        removeComments: true,
        collapseWhitespace: true
        removeCommentsFromCDATA: true
        removeCDATASectionsFromCDATA: true
        removeAttributeQuotes: true
        collapseBooleanAttributes: true
        removeRedundantAttributes: true
        removeEmptyAttributes: true
        removeOptionalTags: true
        removeScriptTypeAttributes: true
        removeStyleLinkTypeAttributes: true
        minifyJS: true
        minifyCSS: true
        customAttrCollapse: /d/
      files:
        '.tmp/icons/svg/icons.svg': '.tmp/icons/svg/icons.svg'

  grunt.loadNpmTasks('grunt-contrib-htmlmin')