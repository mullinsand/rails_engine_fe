FactoryBot.define do
  factory :merchant do
    name { Faker::Name.name }

    skip_create
    initialize_with { new(attributes) }
  end
end
