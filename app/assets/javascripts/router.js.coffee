# For more information see: http://emberjs.com/guides/routing/

MagicEightBall.Router.map ()->
  @route 'login'
  @route 'account'
  @resource 'responses', ->
    @route 'individual', path: '/:response_id'
    @route 'new'
  @route 'history'
