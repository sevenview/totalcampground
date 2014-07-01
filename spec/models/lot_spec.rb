require 'rails_helper'

RSpec.describe Lot, type: :model do
  let(:lot) { FactoryGirl.build(:lot) }

  it { is_expected.to validate_presence_of(:number) }
  it { is_expected.to belong_to(:street) }
end
