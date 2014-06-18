class Reservation < ActiveRecord::Base
  validates :name, :start_date, :end_date, :adults, presence: true
end
