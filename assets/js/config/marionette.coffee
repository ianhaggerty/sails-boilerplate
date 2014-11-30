#===============================================================================
# View configuration for Backbone.Marionette
#===============================================================================

Backbone.Marionette.Renderer.render = (template, data) ->

  index = _(template).lastIndexOf('\/') + 1

  template = template.slice(0, index) + '_' + template.slice(index)

  JST["views/" + template] data