FactoryBot.define do
  factory :student do
    name { Faker::Name.name }
    email { name.downcase.gsub(' ', '_') + '@email.com' }
  end
end
