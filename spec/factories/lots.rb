# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lot do
    sequence(:name) { |n| "Lot #{n}" }
    sequence(:number) { |n| "#{n}" }
  end
end
