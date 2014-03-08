@TES.module "LoginApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    showLogin: ->
      loginView = @getLoginView()
      loginView.on "login:submit", (iv, ui) ->
        App.vent.trigger "associate:login", iv

      App.mainRegion.show loginView

    getLoginView: ->
      new Show.Login
