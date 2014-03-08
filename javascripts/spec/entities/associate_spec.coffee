describe 'App.Associate', ->

  App = new Backbone.Marionette.Application()

  beforeEach ->
    @associate = new TES.Entities.Associate

  it 'should exist', ->
    expect(@associate).not.toBeUndefined()

  it 'should return a logged in model ', ->
    eventSpy = sinon.spy()
    App.vent.on('associate:login', eventSpy)
    App.vent.trigger('associate:login')
    expect(eventSpy.calledOnce).toBeTruthy()
