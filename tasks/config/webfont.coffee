#===============================================================================
# grunt-webfont
#
# Minifies and concatenate svg files to an embedded CSS webfont.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "webfont",
    icons:
      src: 'assets/images/icons/**/*.svg'
      dest: 'assets/fonts'
      destCss: 'assets/styles/build'
      options:
        stylesheet: 'scss'
        engine: 'fontforge'
        types: 'eot,woff,ttf,svg'
        order: 'eot,woff,ttf,svg'
        htmlDemo: true
        destHtml: '.tmp/icons/font'
        relativeFontPath: '../fonts'
        templateOptions:
          classPrefix: 'icon-font__'
          baseClass:   'icon-font'
          mixinPrefix: 'icon-font'


  grunt.loadNpmTasks('grunt-webfont')