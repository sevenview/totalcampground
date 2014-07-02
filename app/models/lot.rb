# == Schema Information
#
# Table name: lots
#
#  id         :integer          not null, primary key
#  number     :integer
#  created_at :datetime
#  updated_at :datetime
#  street_id  :integer
#

class Lot < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :street

  def number_and_street
    "#{self.number} #{self.street.name}"
  end
end
