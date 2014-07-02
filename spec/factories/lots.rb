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
# Indexes
#
#  index_lots_on_street_id  (street_id)
#

FactoryGirl.define do
  factory :lot do
    sequence(:number) { |n| "#{n}" }
    street
  end
end
