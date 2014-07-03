require 'rails_helper'

feature 'FEATURE: Authenticated user access' do
  background do
    sign_in FactoryGirl.create(:user)
  end

  scenario 'sees Home page after login' do
    expect(page).to have_content('Signed in successfully')
    expect(page).to have_content('Reservations')
  end

  scenario 'sees authenticated user menu items' do
    expect(page).to have_content('Log Out')
    expect(page).to have_content('Reservations')
  end
end
