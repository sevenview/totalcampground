# == Schema Information
#
# Table name: campers
#
#  id          :integer          not null, primary key
#  last_name   :string(255)
#  first_name  :string(255)
#  address     :string(255)
#  city        :string(255)
#  province    :string(255)
#  postal_code :string(255)
#  phone       :string(255)
#  mobile      :string(255)
#  email       :string(255)
#  country     :string(255)
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#  active      :boolean          default(TRUE)
#

require 'rails_helper'

describe Camper, type: :model do
  let(:camper) { FactoryGirl.create(:camper) }

  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }

  it 'requires either a phone or mobile number' do
    camper.phone = nil
    camper.mobile = nil
    camper.valid?
    expect(camper.errors[:base].size).to eq(1)

    camper.phone = '7097097090'
    camper.mobile = nil
    camper.valid?
    expect(camper.errors).to be_empty

    camper.phone = nil
    camper.mobile = '7097097090'
    camper.valid?
    expect(camper.errors).to be_empty
  end

  describe '#full_name' do
    it 'returns the camper first and last name concatenated' do
      camper.first_name = 'John'
      camper.last_name  = 'Doe'
      expect(camper.full_name).to eq('John Doe')
    end
  end

  describe '#full_name_last_name_first' do
    it 'returns the camper full name - last name first separate by comma' do
      camper.first_name = 'John'
      camper.last_name  = 'Doe'
      expect(camper.full_name_last_name_first).to eq('Doe, John')
    end
  end
end
