class Reservation < ActiveRecord::Base
  validates :name, :start_date, :end_date, :adults, presence: true

  belongs_to :camper
  belongs_to :lot
end
