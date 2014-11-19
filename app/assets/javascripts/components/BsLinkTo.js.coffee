MagicEightBall.BsLinkToComponent = Ember.Component.extend
  tagName: 'li'
  classNameBindings: ['active']
  active: Ember.computed.alias 'childViews.firstObject.active'
