require 'rails_helper'

RSpec.describe Street, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to have_many(:lots) }
end
