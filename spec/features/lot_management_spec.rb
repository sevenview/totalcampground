require 'rails_helper'

feature 'FEATURE: Lot Management', type: :feature do
  background do
    sign_in FactoryGirl.create(:user)
  end

  scenario 'User can view list of lots', js: true do
    lot = FactoryGirl.create(:lot)
    visit root_path
    click_link 'Settings'
    click_link 'Lots'
    expect(page).to have_selector('h1', text: 'Lots')
    expect(page).to have_selector('td', text: lot.number)
    expect(page).to have_selector('td', text: lot.street.name)
  end

  scenario 'User can add a lot'
  scenario 'User can edit a lot'
  scenario 'User can deactivate a lot'
end
