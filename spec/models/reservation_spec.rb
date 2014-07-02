# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  start_date :date
#  end_date   :date
#  notes      :text
#  checked_in :boolean          default(FALSE)
#  adults     :integer
#  children   :integer
#  pets       :integer
#  created_at :datetime
#  updated_at :datetime
#  camper_id  :integer
#  lot_id     :integer
#

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
