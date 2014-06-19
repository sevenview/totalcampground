class Reservation < ActiveRecord::Base
  validates :camper_id, :lot_id, :start_date, :end_date, :adults, presence: true

  belongs_to :camper
  belongs_to :lot
end
