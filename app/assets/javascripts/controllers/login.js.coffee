MagicEightBall.LoginController = Ember.Controller.extend SimpleAuth.LoginControllerMixin,
  authenticator: 'simple-auth-authenticator:oauth2-password-grant'
  actions:
    register: ->
      @store.createRecord 'user', @get 'register'
        .save()
        .then (user) =>
          @.set 'identification', @.get 'register.email'
          @.set 'password', @.get 'register.password'
          @.set 'register', {}
          @.send 'authenticate'
        .then =>
          @.set 'identification', ''
