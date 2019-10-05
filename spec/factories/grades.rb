FactoryBot.define do
  factory :grade do
    name { FFaker::Name.name }
    time { '5 months' }
    course
  end
end
