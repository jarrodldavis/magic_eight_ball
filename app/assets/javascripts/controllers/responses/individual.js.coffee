MagicEightBall.ResponsesIndividualController = Ember.Controller.extend
  actions:
    update: ->
      $btn =  $('#saveBtn').button 'loading'
      @model.save()
        .catch => @model.rollback()
        .finally -> $btn.button 'reset'
    remove: ->
      $btn =  $('#removeBtn').button 'loading'
      @model.destroyRecord()
        .then => @transitionToRoute 'responses'
        .catch => @model.rollback()
        .finally -> $btn.button 'reset'
