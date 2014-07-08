# == Schema Information
#
# Table name: lots
#
#  id         :integer          not null, primary key
#  number     :integer
#  created_at :datetime
#  updated_at :datetime
#  street_id  :integer
#  division   :string(255)
#
# Indexes
#
#  index_lots_on_street_id  (street_id)
#

class Lot < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :street

  def full_number
    "#{number}#{division}"
  end

  def number_and_street
    "#{full_number} #{street.name}"
  end
end
