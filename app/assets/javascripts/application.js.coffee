#= require jquery
#= require bootstrap
#= require handlebars
#= require ember
#= require ember-data
#= require ember-simple-auth
#= require ember-simple-auth-oauth2
#= require_self
#= require magic_eight_ball

# for more details see: http://emberjs.com/guides/application/
window.ENV = window.ENV || {};
window.ENV['simple-auth'] =
  authorizer: 'simple-auth-authorizer:oauth2-bearer'
window.ENV['simple-auth-oauth2'] =
  serverTokenEndpoint: '/oauth/token'
  serverTokenRevocationEndpoint: '/oauth/revoke'

window.MagicEightBall = Ember.Application.create()

