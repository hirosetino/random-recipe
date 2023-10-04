FactoryBot.define do
  factory :recipe do
    title { Faker::Food.dish }
    cooking_time_id { 2 }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/sample_image.jpeg'), filename: 'sample_image.jpg')
    end
  end
end