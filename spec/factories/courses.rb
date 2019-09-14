FactoryBot.define do
  factory :course do
    name { Faker::Name.name }
    duration { '5 years'}
  end
end
