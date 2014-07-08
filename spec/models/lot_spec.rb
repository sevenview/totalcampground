# == Schema Information
#
# Table name: lots
#
#  id         :integer          not null, primary key
#  number     :integer
#  created_at :datetime
#  updated_at :datetime
#  street_id  :integer
#  division   :string(255)
#
# Indexes
#
#  index_lots_on_street_id  (street_id)
#

require 'rails_helper'

RSpec.describe Lot, type: :model do
  let(:lot) { FactoryGirl.build(:lot) }

  it { is_expected.to validate_presence_of(:number) }
  it { is_expected.to belong_to(:street) }

  describe '.full_number' do
    it 'returns the lot number and division' do
      lot = FactoryGirl.create(:lot, number: 1, division: 'a')
      expect(lot.full_number).to eq('1a')
    end
  end

  describe '.number_and_street' do
    it 'returns the lot number and street name' do
      lot = FactoryGirl.create(:lot, number: 1, division: 'a')
      expect(lot.number_and_street).to eq("1a #{lot.street.name}")
    end
  end
end
