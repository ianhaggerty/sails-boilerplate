#===============================================================================
# Login controller
#
# Server side logic for managing authentication.
#===============================================================================

module.exports =
	local: (req, res) ->
		req.session.authenticated = true
		res.ok()

	logout: (req, res) ->
		delete req.session.authenticated
		delete req.session.passport?.user
		res.ok()