module.exports = (req, res, next) ->
	if !req.session.authenticated
		next()
	else
    res.forbidden()