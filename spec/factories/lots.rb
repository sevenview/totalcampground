FactoryGirl.define do
  factory :lot do
    sequence(:number) { |n| "#{n}" }
    street
  end
end
