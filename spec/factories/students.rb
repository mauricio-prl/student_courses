FactoryBot.define do
  factory :student do
    name { Faker::Name.name }
    email { name.gsub(' ', '_').downcase + '@email.com' }
  end
end
