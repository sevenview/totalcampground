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

  scenario 'User can add a street' do
    visit streets_path
    click_link 'New Street'
    fill_in 'Name', with: 'Main Street'
    click_button 'Create Street'
    expect(page).to have_content('Street created')
  end

  scenario 'User cannot add a street with invalid data' do
    visit streets_path
    click_link 'New Street'
    fill_in 'Name', with: ''
    click_button 'Create Street'
    expect(page).to have_content('error')
  end

  scenario 'User can update a street' do
    FactoryGirl.create(:street, name: 'Main Street')
    visit streets_path
    click_link 'Edit'
    fill_in 'Name', with: 'Secondary Boulevard'
    click_button 'Update Street'
    expect(page).to have_content('Street updated')
  end

  scenario 'User cannot update a street with invalid data' do
    FactoryGirl.create(:street, name: 'Main Street')
    visit streets_path
    click_link 'Edit'
    fill_in 'Name', with: ''
    click_button 'Update Street'
    expect(page).to have_content('error')
  end
end
