require 'faker'

FactoryGirl.define do
  factory :question do
    title { Faker::Lorem.sentence(rand(1..3)) }
    body { Faker::Lorem.paragraph(rand(1..5)) }
  end
end
