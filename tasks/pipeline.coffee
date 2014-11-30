cssFilesToInject = [
	"**/*"
]

jsFilesToInject = [
	"dependencies/sails.io"

	"dependencies/jquery"
	"dependencies/jquery.**"

	"dependencies/lodash"

	"dependencies/backbone"
	"dependencies/backbone.**"

	"dependencies/**/*"

	"config/**/*"

	"app"
	"entities/**/*"
	"apps/**/*"

	"**/*"
]

templateFilesToInject = [
  '**/_*'
]

jsTestFilesToInject = [
	"jasmine/jasmine"
	"jasmine/jasmine-html"
	"jasmine/console"
	"jasmine/boot"

	"**/*"
]

cssTestStylesToInject = [
	"jasmine/**/*"
]

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
