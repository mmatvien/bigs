Backbone.Marionette.Renderer.render = (template, data) ->
  path = JST["javascripts/src/apps/" + template + ".jst"]
  unless path
    throw "Template #{template} not found"
  path(data)
