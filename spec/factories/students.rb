FactoryBot.define do
  factory :student do
    name { FFaker::Name.name }
    email { name.gsub(' ', '_').downcase + '@email.com' }
  end
end
