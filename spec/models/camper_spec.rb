require 'rails_helper'

describe Camper, type: :model do
  let(:camper) { FactoryGirl.create(:camper) }

  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }

  it "requires either a phone or mobile number" do
    camper.phone = nil
    camper.valid?
    expect(camper.errors[:base].size).to eq(1)

    camper.phone = '7097097090'
    camper.mobile = nil
    camper.valid?
    expect(camper.errors[:base].size).to eq(1)
  end
end
