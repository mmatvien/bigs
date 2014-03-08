@TES = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.Constants={
      #api: 'http://localhost:8080/branchprocessor/v1'
      #api: 'http://172.16.246.70/branchprocessor/v1'
      api_host: 'http://localhost:8889/branchprocessor/v1'
      #api: 'http://127.0.0.1/branchprocessor/v1'
      }

  App.rootRoute = "search"
  App.loginRoute = "login"

  App.on "initialize:before", (options) ->
    @current_associate = App.request "set:current:associate", options.current_associate


  App.addRegions
    headerRegion: "#header-region"
    mainRegion: "#main-region"
    footerRegion: "#footer-region"

  App.addInitializer ->
    App.module("HeaderApp").start()
    App.module("FooterApp").start()

  App.on "initialize:after", ->
    if Backbone.history
      Backbone.history.start()
      if @current_associate.get("token") is null
        @navigate(@loginRoute, trigger:true)
      else
        @navigate(@rootRoute, trigger:true) if @getCurrentRoute() is "" or @getCurrentRoute() is @loginRoute
      console.log "**** started ****"

  App
