MagicEightBall.Question = DS.Model.extend
  text: DS.attr 'string'
  response: DS.belongsTo 'response'
  user: DS.belongsTo 'user'
