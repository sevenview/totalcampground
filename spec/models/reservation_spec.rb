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
end
