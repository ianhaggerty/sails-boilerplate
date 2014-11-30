#===============================================================================
# Authenticated policy
#
# This is a simple policy that checks whether the current session is
# authenticated. In addition, it also serializes the user to the session if they
# are authenticated. The `passport.session` middleware ordinarily does this for
# us, however, it doesn't work with socket requests as of sails 0.10.5.
#===============================================================================

module.exports = (req, res, next) ->
	if req.session.authenticated
		# serialize user & add user to session
		userId = req.session?.passport?.user
		if userId
			User.findOne
				id: userId
			.then (user) ->
				if user
					req.user = user
					next()
				else
          res.forbidden()
			.catch ->
				res.serverError()
		else
      res.forbidden()
	else
    res.forbidden()

