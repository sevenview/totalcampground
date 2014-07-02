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
# Indexes
#
#  index_lots_on_street_id  (street_id)
#

class Lot < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :street

  def number_and_street
    "#{number} #{street.name}"
  end
end
