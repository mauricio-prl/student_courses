FactoryBot.define do
  factory :course do
    name { Faker::Name.name }
    duration { '120h'}
  end
end
