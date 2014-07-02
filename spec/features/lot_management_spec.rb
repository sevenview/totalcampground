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

  scenario 'User can add a lot' do
    street = FactoryGirl.create(:street)
    visit lots_path
    click_link 'New Lot'
    fill_in 'Number', with: '1'
    select street.name, from: 'lot_street_id'
    click_button 'Create Lot'
    expect(page).to have_content('Lot created')
  end

  scenario 'User cannot add a lot with invaild input' do
    FactoryGirl.create(:street)
    visit lots_path
    click_link 'New Lot'
    click_button 'Create Lot'
    expect(page).to have_content('error')
  end

  scenario 'User can edit a lot'
  scenario 'User can deactivate a lot'
end
