require 'rails_helper'

feature 'FEATURE: RV Type Management' do
  background do
    sign_in FactoryGirl.create(:user)
  end

  scenario 'User can view a list of RV Types', js: true do
    rv_type = FactoryGirl.create(:rv_type)
    click_link 'Settings'
    click_link 'RV Types'
    expect(page).to have_selector('h1', text: 'RV Types')
    expect(page).to have_selector('td', text: rv_type.name)
  end

  scenario 'User can add a RV Type' do
    visit rv_types_path
    click_link 'New RV Type'
    fill_in 'Name', with: 'Motorhome'
    click_button 'Create RV Type'
    expect(page).to have_content('RV Type created')
  end

  scenario 'User cannot add a RV Type with invalid data' do
    visit rv_types_path
    click_link 'New RV Type'
    fill_in 'Name', with: ''
    click_button 'Create RV Type'
    expect(page).to have_content('error')
  end

  scenario 'User can update a RV Type' do
    FactoryGirl.create(:rv_type, name: 'Motorhome')
    visit rv_types_path
    click_link 'Edit'
    fill_in 'Name', with: 'Tent'
    click_button 'Update RV Type'
    expect(page).to have_content('RV Type updated')
  end

  scenario 'User cannot update a rv_type with invalid data' do
    FactoryGirl.create(:rv_type, name: 'Main RV Type')
    visit rv_types_path
    click_link 'Edit'
    fill_in 'Name', with: ''
    click_button 'Update RV Type'
    expect(page).to have_content('error')
  end
end
