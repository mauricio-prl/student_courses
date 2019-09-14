FactoryBot.define do
  factory :grade do
    name { Faker::Name.name }
    time { '5 months'}
  end
end
