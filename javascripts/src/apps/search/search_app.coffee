@TES.module "SearchApp", (SearchApp, App, Backbone, Marionette, $, _) ->

  class SearchApp.Router extends Marionette.AppRouter
    appRoutes:
      "search": "showSearch"

  API =
    showSearch: ->
      SearchApp.Show.Controller.showSearch()

  App.addInitializer ->
    new SearchApp.Router
      controller: API
