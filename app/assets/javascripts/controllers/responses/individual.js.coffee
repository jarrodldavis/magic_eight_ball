MagicEightBall.ResponsesIndividualController = Ember.Controller.extend
  actions:
    update: ->
      $btn =  $('#saveBtn').button 'loading'
      @model.save()
        .catch => @model.rollback()
        .finally -> $btn.button 'reset'
