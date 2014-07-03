# == Schema Information
#
# Table name: rv_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :rv_type do
    name 'Motorhome'
  end
end
