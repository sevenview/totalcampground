class Camper < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validate :check_for_presence_of_phone_or_mobile_number

  def check_for_presence_of_phone_or_mobile_number
    errors.add(:base, 'You must provide either a Phone or Mobile number') if phone.blank? or mobile.blank?
  end
end
