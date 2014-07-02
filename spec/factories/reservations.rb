# == Schema Information
#
# Table name: reservations
#
#  id                           :integer          not null, primary key
#  start_date                   :date
#  end_date                     :date
#  notes                        :text
#  checked_in                   :boolean          default(FALSE)
#  adults                       :integer
#  children                     :integer
#  pets                         :integer
#  created_at                   :datetime
#  updated_at                   :datetime
#  camper_id                    :integer
#  lot_id                       :integer
#  security_card_number         :integer
#  encrypted_credit_card_number :string(255)
#  credit_card_expiry_month     :integer
#  credit_card_expiry_year      :integer
#
# Indexes
#
#  index_reservations_on_camper_id  (camper_id)
#  index_reservations_on_lot_id     (lot_id)
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
