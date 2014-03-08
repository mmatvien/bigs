@TES.module "LoginApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Login extends Marionette.ItemView
    template: "login/show/templates/show_login"

    events:
      "click #loginAction" : ->
        @trigger 'login:submit', @ui

    ui:
      standard_id: '#standard_id'
      password: '#password'
