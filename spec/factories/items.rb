FactoryBot.define do
  factory :item do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    unit_price { rand(50..20000) }
    # merchant_id { }

    skip_create
    initialize_with { new(attributes) }
  end
end