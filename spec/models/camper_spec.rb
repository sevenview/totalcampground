require 'rails_helper'

describe Camper, type: :model do
  let(:camper) { FactoryGirl.create(:camper) }

  it "requires a first name" do
    camper.first_name = nil
    camper.valid?
    expect(camper.errors[:first_name].size).to eq(1)
  end

  it "requires a last name" do
    camper.last_name = nil
    camper.valid?
    expect(camper.errors[:last_name].size).to eq(1)
  end

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
