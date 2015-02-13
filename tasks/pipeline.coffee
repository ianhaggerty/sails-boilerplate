#===============================================================================
# pipeline.coffee
# 
# This is where the order of javascript, css and client side templates are
# configured.
#===============================================================================


## CSS files
# relative to `.tmp/public/styles`
# file extension `.css`

cssFilesToInject = [
  "icons"
	"**/*"
]


## JS Files
# relative to `assets/js`
# file extension `.js`

jsFilesToInject = [
	"dependencies/dist/sails.io"

	"dependencies/dist/jquery"
	"dependencies/lodash"
  "dependencies/json2"
  "dependencies/jade"

	"dependencies/backbone"
	"dependencies/lib/core/backbone.marionette"
  "dependencies/lib/backbone.babysitter"
  "dependencies/lib/backbone.wreqr"

	"dependencies/backbone.sails"

	"config/**/*"

	"app"
	"entities/**/*"
	"apps/**/*"

	"**/*"
]


## Template (javascript) files
# These javascript files are intended to populate the global `JST` object.
# relative to `views/`
# file extension `.jade`

templateFilesToInject = [
  '**/_*'
]


## Javascript test files
# relative to `assets/tests`
# file extension `.js`

jsTestFilesToInject = [
	"jasmine/jasmine"
	"jasmine/jasmine-html"
	"jasmine/console"
	"jasmine/boot"

	"**/*"
]


## CSS Test styles
# relative to `assets/tests`
# file extension `.js`

cssTestStylesToInject = [
	"jasmine/**/*"
]





### Module Exports ###

module.exports.cssFilesToInject = cssFilesToInject.map (path) ->
  ".tmp/public/styles/" + path + '.css'

module.exports.jsFilesToInject = jsFilesToInject.map (path) ->
	".tmp/public/js/" + path + '.js'

module.exports.templateFilesToInject = templateFilesToInject.map (path) ->
  "views/" + path + ".jade"

module.exports.jsTestFilesToInject = jsTestFilesToInject.map (path) ->
  ".tmp/public/tests/" + path + '.js'

module.exports.cssTestStylesToInject = cssTestStylesToInject.map (path) ->
  ".tmp/public/tests/" + path + '.css'
