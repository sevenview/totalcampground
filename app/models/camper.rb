# == Schema Information
#
# Table name: campers
#
#  id          :integer          not null, primary key
#  last_name   :string(255)
#  first_name  :string(255)
#  address     :string(255)
#  city        :string(255)
#  province    :string(255)
#  postal_code :string(255)
#  phone       :string(255)
#  mobile      :string(255)
#  email       :string(255)
#  country     :string(255)
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#  active      :boolean          default(TRUE)
#

class Camper < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validate :check_for_presence_of_phone_or_mobile_number

  def full_name
    "#{first_name} #{last_name}"
  end

  def full_name_last_name_first
    "#{last_name}, #{first_name}"
  end

  def check_for_presence_of_phone_or_mobile_number
    errors.add(:base, 'You must provide either a Phone or Mobile number') if phone.blank? && mobile.blank?
  end
end
