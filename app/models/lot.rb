class Lot < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :street
end
