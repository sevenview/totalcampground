# == Schema Information
#
# Table name: streets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Street < ActiveRecord::Base
  validates :name, presence: true

  has_many :lots, -> { order('number, division') }
end
