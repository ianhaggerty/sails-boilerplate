#===============================================================================
# Routes
#
# http://sailsjs.org/#/documentation/anatomy/myApp/config/routes.js.html
#===============================================================================

routes =
  '/tests':
    view: 'tests'
  '/':
    view: "home"

clientSide = [
  # todo put client side routes here
]

for route in clientSide
  routes[route] = view: "home"

module.exports.routes = routes
