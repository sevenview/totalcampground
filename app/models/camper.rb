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
