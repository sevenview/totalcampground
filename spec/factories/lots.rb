# == Schema Information
#
# Table name: lots
#
#  id         :integer          not null, primary key
#  number     :integer
#  created_at :datetime
#  updated_at :datetime
#  street_id  :integer
#

FactoryGirl.define do
  factory :lot do
    sequence(:number) { |n| "#{n}" }
    street
  end
end
