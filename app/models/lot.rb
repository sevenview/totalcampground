class Lot < ActiveRecord::Base
  validates :number, presence: true
end
