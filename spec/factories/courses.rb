FactoryBot.define do
  factory :course do
    name { FFaker::Name.name }
    duration { '5 years' }
  end
end
