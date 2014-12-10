MagicEightBall.Response = DS.Model.extend
  text: DS.attr 'string'
  default: DS.attr 'boolean'
  totalQuestions: DS.attr 'number'
