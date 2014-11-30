#===============================================================================
# Local environment settings
#
# http://sailsjs.org/#/documentation/anatomy/myApp/config/local.js.html
#===============================================================================

module.exports =
  port        : process.env.PORT      || 1337
  environment : process.env.NODE_ENV  || 'development'