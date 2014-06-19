# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    start_date Date.today
    end_date  Date.today + 1
    adults 2
    camper
    lot
  end
end
