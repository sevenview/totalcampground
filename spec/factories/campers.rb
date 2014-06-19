# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :camper do
    last_name { Faker::Name.last_name }
    first_name { Faker::Name.first_name }
    address { Faker::Address.street_address}
    city { Faker::Address.city }
    province { Faker::AddressCA.province }
    postal_code { Faker::AddressCA.postal_code }
    phone { Faker::PhoneNumber.phone_number }
    mobile { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
    country "Canada"
    notes { Faker::Lorem.paragraph }
  end
end
