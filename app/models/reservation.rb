# == Schema Information
#
# Table name: reservations
#
#  id                           :integer          not null, primary key
#  start_date                   :date
#  end_date                     :date
#  notes                        :text
#  checked_in                   :boolean          default(FALSE)
#  adults                       :integer
#  children                     :integer
#  pets                         :integer
#  created_at                   :datetime
#  updated_at                   :datetime
#  camper_id                    :integer
#  lot_id                       :integer
#  security_card_number         :integer
#  encrypted_credit_card_number :string(255)
#  credit_card_expiry_month     :integer
#  credit_card_expiry_year      :integer
#  credit_card_type             :string(255)
#  rv_type_id                   :integer
#
# Indexes
#
#  index_reservations_on_camper_id   (camper_id)
#  index_reservations_on_lot_id      (lot_id)
#  index_reservations_on_rv_type_id  (rv_type_id)
#

class Reservation < ActiveRecord::Base
  validates :camper_id, :lot_id, :start_date, :end_date, :adults, presence: true

  belongs_to :camper
  belongs_to :lot
  belongs_to :rv_type

  include Encryptable
  attr_encrypted :credit_card_number, key: :db_encryption_key

  # Calculates the number of nights in this stay
  def nights
    (end_date - start_date).to_i
  end
end
