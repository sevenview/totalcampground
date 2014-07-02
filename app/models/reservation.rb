# == Schema Information
#
# Table name: reservations
#
#  id                   :integer          not null, primary key
#  start_date           :date
#  end_date             :date
#  notes                :text
#  checked_in           :boolean          default(FALSE)
#  adults               :integer
#  children             :integer
#  pets                 :integer
#  created_at           :datetime
#  updated_at           :datetime
#  camper_id            :integer
#  lot_id               :integer
#  security_card_number :integer
#
# Indexes
#
#  index_reservations_on_camper_id  (camper_id)
#  index_reservations_on_lot_id     (lot_id)
#

class Reservation < ActiveRecord::Base
  validates :camper_id, :lot_id, :start_date, :end_date, :adults, presence: true

  belongs_to :camper
  belongs_to :lot
end
