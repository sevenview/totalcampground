require 'rails_helper'

feature 'FEATURE: Anonymous user access' do
  scenario 'gets login prompt on hitting the home page' do
    visit root_path
    expect(page).to have_content('You need to sign in or sign up before continuing')
    expect(page).to have_content('Log In')
    expect(current_path).to eq new_user_session_path
  end

  scenario 'doesn not see protected menu items' do
    visit root_path
    expect(page).to have_no_content('Log Out')
    expect(page).to have_no_content('Reservation List')
  end
end
