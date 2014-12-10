# For more information see: http://emberjs.com/guides/routing/

MagicEightBall.Router.map ()->
  @route 'login'
  @resource 'responses', ->
    @route 'individual', path: '/:response_id'
