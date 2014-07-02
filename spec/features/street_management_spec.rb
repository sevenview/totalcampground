require 'rails_helper'

feature 'FEATURE: Street Management' do
  background do
    sign_in FactoryGirl.create(:user)
  end

  scenario 'User can view a list of streets', js: true do
    street = FactoryGirl.create(:street)
    click_link 'Settings'
    click_link 'Streets'
    expect(page).to have_selector('h1', text: 'Streets')
    expect(page).to have_selector('td', text: street.name)
  end

  scenario 'User can add a street'
  scenario 'User can update a street'
end
