# http://emberjs.com/guides/models/#toc_store
# http://emberjs.com/guides/models/pushing-records-into-the-store/

MagicEightBall.ApplicationStore = DS.Store.extend({

})

# Override the default adapter with the `DS.ActiveModelAdapter` which
# is built to work nicely with the ActiveModel::Serializers gem.
MagicEightBall.ApplicationAdapter = DS.ActiveModelAdapter.extend({
  namespace: 'api/v1'
})

MagicEightBall.UserAdapter = DS.ActiveModelAdapter.extend()
MagicEightBall.UserSerializer = DS.ActiveModelSerializer.extend
  serialize: (record, options) ->
    json = @._super record, options
    json.password = record.get 'password'
    json.password_confirmation = record.get 'passwordConfirmation'
    return json
