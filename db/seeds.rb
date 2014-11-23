# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

['It is certain',
 'It is decidedly so',
 'Without a doubt',
 'Yes definitely',
 'You may rely on it',
 'As I see it, yes',
 'Most likely',
 'Outlook good',
 'Yes',
 'Signs point to yes',
 'Reply hazy try again',
 'Ask again later',
 'Better not tell you now',
 'Cannot predict now',
 'Concentrate and ask again',
 'Don\'t count on it',
 'My reply is no',
 'My sources say no',
 'Outlook not so good',
 'Very doubtful'].each do |default_response|
  Api::V1::Response.create(text: default_response, default: true)
end
