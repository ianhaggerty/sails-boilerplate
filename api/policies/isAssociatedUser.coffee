module.exports = (req, res, next) ->
	# expects a property 'user' in the request
	if req.body?.user == req.user.id
		next()
	else
		res.forbidden()