require 'faker'

FactoryGirl.define do
  factory :person, class Person do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
  end
end