require 'faker'

FactoryBot.define do
  factory :recipefood do
    quantity { Faker::Number.between(from: 1, to: 10) }
    association :recipe
    association :food
  end
end
