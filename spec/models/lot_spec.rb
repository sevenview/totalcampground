require 'rails_helper'

RSpec.describe Lot, type: :model do
  let(:lot) { FactoryGirl.build(:lot) }

  it "requires a name" do
    lot.name = nil
    lot.valid?
    expect(lot.errors[:name].size).to eq(1)
  end

  it "requires a lot number" do
    lot.number = nil
    lot.valid?
    expect(lot.errors[:number].size).to eq(1)
  end
end
