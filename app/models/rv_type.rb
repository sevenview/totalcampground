# == Schema Information
#
# Table name: rv_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class RvType < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
end
