MagicEightBall.LoginRoute = Ember.Route.extend SimpleAuth.UnauthenticatedRouteMixin,
  setupController: (controller) -> @controller.set 'register', {}
