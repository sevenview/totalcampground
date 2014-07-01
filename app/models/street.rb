class Street < ActiveRecord::Base
  validates :name, presence: true
end
