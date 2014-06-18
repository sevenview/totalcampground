require 'rails_helper'

describe Reservation, type: :model do
  let(:reservation) { FactoryGirl.build :reservation }

  it "requires a name" do
    reservation.name = nil
    reservation.valid?
    expect(reservation.errors[:name].size).to eq(1)
  end

  it "requires a start date" do
    reservation.start_date = nil
    reservation.valid?
    expect(reservation.errors[:start_date].size).to eq(1)
  end

  it "requires an end date" do
    reservation.end_date = nil
    reservation.valid?
    expect(reservation.errors[:end_date].size).to eq(1)
  end

  it "requires the number of adults" do
    reservation.adults = nil
    reservation.valid?
    expect(reservation.errors[:adults].size).to eq(1)
  end
end
