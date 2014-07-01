class Street < ActiveRecord::Base
  validates :name, presence: true

  has_many :lots
end
