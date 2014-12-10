MagicEightBall.ResponsesNewRoute = Ember.Route.extend
  model: -> this.store.createRecord 'response'
