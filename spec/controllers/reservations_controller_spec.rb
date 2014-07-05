require 'rails_helper'

RSpec.describe ReservationsController, type: :controller do
  before do
    sign_in FactoryGirl.create(:user)
  end

  describe 'GET #new' do
    it 'retrieves only the set of active campers for display in the form' do
      FactoryGirl.create(:camper, active: true)
      FactoryGirl.create(:camper, active: false)
      get :new
      expect(assigns[:campers].size).to eq(1)
    end
  end
end
