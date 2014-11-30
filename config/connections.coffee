#===============================================================================
# Connections
#
# http://sailsjs.org/#/documentation/anatomy/myApp/config/connections.js.html
#===============================================================================

module.exports.connections =

  localDiskDb:
    adapter: "sails-disk"

  localMongodb:
    adapter: "sails-mongo"
    host: "localhost"
    port: 27017
    database: "testdb"