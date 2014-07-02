# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  start_date :date
#  end_date   :date
#  notes      :text
#  checked_in :boolean          default(FALSE)
#  adults     :integer
#  children   :integer
#  pets       :integer
#  created_at :datetime
#  updated_at :datetime
#  camper_id  :integer
#  lot_id     :integer
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    start_date Date.today
    end_date Date.today + 1
    adults 2
    camper
    lot
  end
end
