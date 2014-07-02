# == Schema Information
#
# Table name: streets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Street, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to have_many(:lots) }
end
