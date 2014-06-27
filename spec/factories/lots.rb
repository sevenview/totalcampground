FactoryGirl.define do
  factory :lot do
    sequence(:name) { |n| "Lot #{n}" }
    sequence(:number) { |n| "#{n}" }
  end
end
