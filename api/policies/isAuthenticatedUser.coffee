module.exports = (req, res, next) ->
	if req.user.id == req.params.id
		next()
	else
		res.forbidden()