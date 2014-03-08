@TES.module "Views", (Views, App, Backbone, Marionette, $, _ ) ->

  _.extend Marionette.View::,

  templateHelpers: ->
    #integrate global view helpers here [ logged in user ]
