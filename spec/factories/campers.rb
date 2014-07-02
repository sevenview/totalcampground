# == Schema Information
#
# Table name: campers
#
#  id          :integer          not null, primary key
#  last_name   :string(255)
#  first_name  :string(255)
#  address     :string(255)
#  city        :string(255)
#  province    :string(255)
#  postal_code :string(255)
#  phone       :string(255)
#  mobile      :string(255)
#  email       :string(255)
#  country     :string(255)
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#  active      :boolean          default(TRUE)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :camper do
    last_name { Faker::Name.last_name }
    first_name { Faker::Name.first_name }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    province { Faker::AddressCA.province }
    postal_code { Faker::AddressCA.postal_code }
    phone { Faker::PhoneNumber.phone_number }
    mobile { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
    country 'Canada'
    notes { Faker::Lorem.paragraph }
  end
end
