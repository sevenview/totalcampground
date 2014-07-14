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

require 'rails_helper'

describe Reservation, type: :model do
  let(:reservation) { FactoryGirl.build :reservation }

  it { is_expected.to validate_presence_of(:camper_id) }
  it { is_expected.to validate_presence_of(:start_date) }
  it { is_expected.to validate_presence_of(:end_date) }
  it { is_expected.to validate_presence_of(:adults) }
  it { is_expected.to validate_presence_of(:lot_id) }

  it { is_expected.to belong_to(:camper) }
  it { is_expected.to belong_to(:lot) }
  it { is_expected.to belong_to(:rv_type) }

  describe '.nights' do
    it 'calculates the number of days for the reservation' do
      reservation.start_date = Date.new(2014, 7, 1)
      reservation.end_date = Date.new(2014, 7, 3)
      expect(reservation.nights).to eq(2)
    end
  end

  describe '#all_current' do
    it 'returns reservations that end today or later' do
      # reservation that ends yesterday and is not checked in (should not be returned)
      FactoryGirl.create(:reservation, end_date: 1.day.ago)
      # reservation that ends today (should be returned)
      FactoryGirl.create(:reservation, end_date: Date.today)
      # reservation that ends a week from today (should be returned)
      FactoryGirl.create(:reservation, end_date: 1.week.from_now)
      expect(Reservation.all_current.size).to eq(2)
    end

    it 'returns reservations that end earlier than today but are still checked in' do
      # reservation that ends two days ago but is still checked in
      # (should be returned)
      FactoryGirl.create(:reservation, end_date: 2.days.ago, checked_in: true)
      # reservation that ends yesterday and is not checked in (should not be returned)
      FactoryGirl.create(:reservation, end_date: 1.day.ago)
      expect(Reservation.all_current.size).to eq(1)
    end
  end
end
