@TES.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Header extends Entities.Model

  class Entities.HeaderCollection extends Entities.Collection
    model: Entities.Header

  API =
    getHeaders: ->
      new Backbone.Collection [
        { name: @currentDate() , url: "#"  }
        { name: @currentTime() , url: "#" }
      ]

    currentDate: ->
      "03/07/14"

    currentTime: ->
      "09:41 AM"

  App.reqres.setHandler "header:entities", ->
    API.getHeaders()
