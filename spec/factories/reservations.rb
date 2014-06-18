# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    start_date Date.today
    end_date  Date.today + 1
    name 'Jack Smith'
    adults 2
  end
end
