FactoryBot.define do
    factory :procedure do
      cooking_method { Faker::Lorem.paragraph }

      association :recipe
    end
end