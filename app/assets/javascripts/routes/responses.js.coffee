MagicEightBall.ResponsesRoute = Ember.Route.extend SimpleAuth.AuthenticatedRouteMixin,
  model: -> this.store.find 'response'
