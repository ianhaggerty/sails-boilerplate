#===============================================================================
# Policy Configuration
#
# http://sailsjs.org/#/documentation/anatomy/myApp/config/policies.js.html
#===============================================================================

passport = require "passport"

module.exports.policies =
	"*"         : true

	LoginController:
		local     : passport.authenticate "local"
		logout    : true

	UserController:
		find      : false
		findOne   : ["isAuthenticated", "isAuthenticatedUserOrAdmin"]
		create    : ["isNotAuthenticated"]
		update    : ["isAuthenticated", "isAuthenticatedUserOrAdmin"]
		destroy   : ["isAuthenticated", "isAuthenticatedUser"]
		populate  : ["isAuthenticated", "isAuthenticatedUserOrAdmin"]
		add       : ["isAuthenticated", "isAuthenticatedUserOrAdmin"]