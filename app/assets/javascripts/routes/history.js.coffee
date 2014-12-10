MagicEightBall.HistoryRoute = Ember.Route.extend SimpleAuth.AuthenticatedRouteMixin,
  model: -> this.store.find 'question'
