MagicEightBall.IndexController = Ember.Controller.extend
  actions:
    askQuestion: ->
      @store.createRecord('question',
        text: @get 'question'
      ).save().then (question) =>
        @set 'response',
          question: question.get 'text'
          text: question.get('response').get 'text'
          @set 'question', ''
