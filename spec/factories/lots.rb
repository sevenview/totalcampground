FactoryGirl.define do
  factory :lot do
    sequence(:number) { |n| "#{n}" }
  end
end
