MagicEightBall.ResponsesNewController = Ember.Controller.extend
  actions:
    create: ->
      $btn =  $('#saveBtn').button 'loading'
      @model.save()
      .then => @transitionToRoute 'responses.individual', @model
      .finally -> $btn.button 'reset'
