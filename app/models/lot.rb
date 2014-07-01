class Lot < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :street

  def number_and_street
    "#{self.number} #{self.street.name}"
  end
end
