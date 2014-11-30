module.exports = (req, res, next) ->
	if req.user && (req.user.isAdmin || req.user.id == req.param "id")
		next()
	else
		res.forbidden()