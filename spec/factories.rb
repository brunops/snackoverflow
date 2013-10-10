require 'faker'

FactoryGirl.define do
  factory :question do
    body { Faker::Lorem.paragraph(rand(1..5)) }
  end
end
