(function() {
  describe('App.HeaderModule', function() {
    var App;
    App = new Backbone.Marionette.Application();
    beforeEach(function() {
      App.start();
      return this.headerModule = new TES.Entities.Header;
    });
    it('should exist', function() {
      return expect(this.headerModule).not.toBeUndefined();
    });
    return it('should return a list of header links', function() {
      var eventSpy;
      return eventSpy = sinon.spy();
    });
  });

  describe('App.Associate', function() {
    var App;
    App = new Backbone.Marionette.Application();
    beforeEach(function() {
      return this.associate = new TES.Entities.Associate;
    });
    it('should exist', function() {
      return expect(this.associate).not.toBeUndefined();
    });
    return it('should return a logged in model ', function() {
      var eventSpy;
      eventSpy = sinon.spy();
      App.vent.on('associate:login', eventSpy);
      App.vent.trigger('associate:login');
      return expect(eventSpy.calledOnce).toBeTruthy();
    });
  });

}).call(this);
