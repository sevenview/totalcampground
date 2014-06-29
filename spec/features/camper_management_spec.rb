require 'rails_helper'

feature 'Camper Management', type: :feature do
  background do
    sign_in FactoryGirl.create(:user)
  end

  scenario 'User can list all campers' do
    FactoryGirl.create_list(:camper, 2)
    visit root_path
    click_link 'Campers'
    expect(page).to have_content('Campers')
    expect(page).to have_css('tr', count: 3)
  end

  scenario 'User can add a camper' do
    visit campers_path
    click_link 'New Camper'
    fill_in 'First name', with: 'John'
    fill_in 'Last name', with: 'Doe'
    fill_in 'Phone', with: '555-555-5555'
    click_button 'Create Camper'
    expect(page).to have_content 'Created camper John Doe'
  end

  scenario 'User can delete a camper'
  scenario 'Deleting a camper does not affect any associated reservations'
  scenario 'User can update a camper'
end
