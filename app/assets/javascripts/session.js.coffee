SessionWithCurrentUser = SimpleAuth.Session.extend
    currentUser: (->
      userId = this.get('user_id')
      if (Ember.isEmpty(userId))
        new Ember.RSVP.Promise (resolve, reject) -> reject 'Not authenticated.'
      else
        this.container.lookup('store:main').find 'user', userId
    ).property('content.access_token')

MagicEightBall.initializer
  name: 'custom-session'
  before: 'simple-auth'
  initialize: (container) -> container.register 'session:withCurrentUser', SessionWithCurrentUser
