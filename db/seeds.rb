# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#double check my env.variables
puts ENV['GMAIL_USERNAME']

4.times do 
  user = User.new(
        :email                 => "admin@xxxxx.xxx",
        :password              => "12345sf6",
        :password_confirmation => "12345sf6"
    )
    user.skip_confirmation!
    user.save!
end