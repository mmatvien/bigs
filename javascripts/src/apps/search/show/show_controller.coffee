@TES.module "SearchApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    showSearch: ->
      searchView = @getSearchView()
      App.mainRegion.show searchView

    getSearchView:  ->
      new Show.Search
