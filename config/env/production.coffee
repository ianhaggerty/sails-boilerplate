#===============================================================================
# Production environment settings
#
# http://sailsjs.org/#/documentation/anatomy/myApp/config/env/production.js.html
#===============================================================================

module.exports =

	models:
	   connection: 'localMongodb'

	port: 80

	log:
	   level: "silent"

  session:
    adapter: 'mongo'
    port: 27017
    db: 'sails'
    collection: 'sessions'

    username: ''
    password: ''
    auto_reconnect: true
    ssl: false