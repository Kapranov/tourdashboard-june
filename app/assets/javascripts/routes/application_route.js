Tourdashboard.ApplicationRoute = Ember.Route.extend({
  root: Ember.Route.extend({
    index: Ember.Route.extend({
      route: '/',
      connectOutlets: function (router) {
      }
    })
  })
});
