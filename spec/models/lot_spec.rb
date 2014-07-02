# == Schema Information
#
# Table name: lots
#
#  id         :integer          not null, primary key
#  number     :integer
#  created_at :datetime
#  updated_at :datetime
#  street_id  :integer
#

require 'rails_helper'

RSpec.describe Lot, type: :model do
  let(:lot) { FactoryGirl.build(:lot) }

  it { is_expected.to validate_presence_of(:number) }
  it { is_expected.to belong_to(:street) }

  describe '.number_and_street' do
    it 'returns the lot number and street name' do
      lot = FactoryGirl.create(:lot)
      expect(lot.number_and_street).to eq("#{lot.number} #{lot.street.name}")
    end
  end
end
