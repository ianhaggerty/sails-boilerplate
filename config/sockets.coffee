#===============================================================================
# Web socket configuration
#
# http://sailsjs.org/#/documentation/anatomy/myApp/config/sockets.js.html
#===============================================================================

module.exports.sockets =
  onConnect: (session, socket) ->
  onDisconnect: (session, socket) ->