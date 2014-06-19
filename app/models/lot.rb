class Lot < ActiveRecord::Base
  validates :name, :number, presence: true
end
