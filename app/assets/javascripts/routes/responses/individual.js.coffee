MagicEightBall.ResponsesIndividualRoute = Ember.Route.extend
  model: (params) -> this.store.find 'response', params.response_id
