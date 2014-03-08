@TES.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.AssociateLogin extends Entities.Model
    defaults:
      standard_id: null
      password: null
    url: "#{App.Constants.api_host}/authentication/login"

  class Entities.Associate extends Entities.Model
    defaults:
      standard_id: null
      token: null
      name: null
      pic_url: null

  API =
    setCurrentAssociate: (currentAssociate) ->
      new Entities.Associate JSON.parse(currentAssociate)

    getCurrentAssociate: ->
      users = new Entities.Associate
      user.fetch
        reset: true
      user

    associateLogin:(standardId, password) ->
      associate_login = new Entities.AssociateLogin
        standard_id: standardId
        password: password
      associate_login.save null,
        success: (model, data) ->
          sessionStorage.setItem("current_associate", JSON.stringify(data))
          App.navigate(App.rootRoute, trigger:true)
        error: (a,s,d) ->
          console.log "AJAX error #{s}"

  App.vent.on "associate:login", (cridentials) ->
    API.associateLogin(cridentials.standard_id.val(), cridentials.password.val())

  App.reqres.setHandler "set:current:associate", (current_associate) ->
    API.setCurrentAssociate current_associate
