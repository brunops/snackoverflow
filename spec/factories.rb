require 'faker'

FactoryGirl.define do
  factory :question do
    title { Faker::Lorem.sentence(rand(1..3)) }
    body { Faker::Lorem.paragraph(rand(1..5)) }
  end

  factory :user do
    username { Faker::Internet.user_name }
    password { Faker::Internet.password }
    email { Faker::Internet.email }
  end
end
