@TES.module "SearchApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Search extends App.Views.ItemView
    template: "search/show/templates/show_search"
