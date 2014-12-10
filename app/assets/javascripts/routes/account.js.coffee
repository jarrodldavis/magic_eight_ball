MagicEightBall.AccountRoute = Ember.Route.extend SimpleAuth.AuthenticatedRouteMixin,
  model: -> @get('session.currentUser').then (user) -> user
