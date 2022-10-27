FactoryBot.define do
  factory :merchant do
    attributes {{ name: Faker::Name.name }}
    id { Faker::Number.unique.within(range: 1..100)}
    skip_create
    initialize_with { new(attributes) }
  end
end
