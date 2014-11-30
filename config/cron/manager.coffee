#===============================================================================
# CRON Manager
#
# https://github.com/ncb000gt/node-cron
#===============================================================================

require "../globals"
CronJob = require("cron").CronJob
sails = require "sails"

module.exports =
	example: new CronJob
		cronTime: '0 */10 * * * *' # every 10 minutes
		onTick: require "./jobs/example"
		start: true
		timeZone: APP.TIME_ZONE

sails.log.info "CRON manager initialized"