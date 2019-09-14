FactoryBot.define do
  factory :grade do
    name { Faker::Name.name }
    duration { '120hours'}
  end
end
