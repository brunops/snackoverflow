require 'faker'

FactoryGirl.define do
  factory :answer do
    body { Faker::Lorem.paragraph(rand(1..4)) }
    question
  end

  factory :question do
    title { Faker::Lorem.sentence(rand(1..3)) }
    body { Faker::Lorem.paragraph(rand(1..5)) }

    factory :question_with_answers do
      after(:create) do |question|
        FactoryGirl.create_list(:answer, rand(1..10), question: question)
      end
    end
  end

  factory :user do
    username { Faker::Internet.user_name }
    password { Faker::Internet.password }
    email { Faker::Internet.email }
  end

end
