describe 'App.HeaderModule', ->

  App = new Backbone.Marionette.Application()

  beforeEach ->
    App.start()
    @headerModule = new TES.Entities.Header

  it 'should exist', ->
    expect(@headerModule).not.toBeUndefined()

  it 'should return a list of header links', ->
    eventSpy = sinon.spy()
    #App.reqres.on('associate:login', eventSpy)
    #links = App.execute('header:entities')
    #console.log links
    #expect(eventSpy.calledOnce).toBeTruthy()
    #links = @headerModule.API.getHeaders()
    #log links
