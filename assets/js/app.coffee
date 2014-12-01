App = new Marionette.Application()

App.addRegions
	client: '.client'
  # todo add some more regions...

# some helper methods
App.navigate = (route, options = {}) ->
	Backbone.history.navigate route, options

App.getCurrentRoute = ->
	Backbone.history.fragment

# register handler to start backbone history
App.on "start", ->
	Backbone?.history.start
		pushState: true
  App.trigger "demonstration"
	# todo trigger some events to set into default state

# a client side template example
# todo remove the following code...
class View extends Backbone.Marionette.ItemView
  template: 'example'
App.on "demonstration", ->
  view = new View()
  App.client.show view