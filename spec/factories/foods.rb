FactoryBot.define do
    factory :food do
      name     { Faker::Food.ingredient }
      quantity { Faker::Food.measurement }

      association :recipe
    end
end