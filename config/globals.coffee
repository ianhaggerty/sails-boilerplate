#===============================================================================
# Global variable configuration
#
# http://sailsjs.org/#/documentation/anatomy/myApp/config/globals.js.html
#===============================================================================

module.exports.globals =
  _       : true
  async   : true
  sails   : true
  services: true
  models  : true


#===============================================================================
# Custom Node.js Globals
#===============================================================================
GLOBAL.APP =
	TIME_ZONE: "Europe/London"