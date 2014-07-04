require 'rails_helper'

feature 'FEATURE: Reservations', type: :feature do
  let(:user) { FactoryGirl.create(:user) }

  background do
    sign_in user
  end

  scenario 'Views the list of reservations' do
    reservation = FactoryGirl.create(:reservation)
    visit reservations_path
    expect(page).to have_selector('h1', text: 'Reservations')
    expect(page).to have_content reservation.camper.full_name
  end

  scenario 'User adds a new reservation', js: true do
    camper = FactoryGirl.create(:camper)
    lot = FactoryGirl.create(:lot)
    visit root_path
    click_link 'New Reservation'
    select camper.full_name_last_name_first, from: 'camper_id'
    fill_in 'Arrive', with: '2014-06-19'
    fill_in 'Depart', with: '2014-06-20'
    fill_in 'Adults', with: '2'
    fill_in 'Children', with: '3'
    fill_in 'Pets', with: '1'
    select lot.number, from: 'reservation_lot_id'
    fill_in 'Note', with: Faker::Lorem.sentence
    check 'reservation_checked_in'
    click_button 'Create Reservation'
    expect(page).to have_content('A new reservation has been created.')
  end

  scenario 'User adds a new reservation with invalid data' do
    FactoryGirl.create(:camper)
    FactoryGirl.create(:lot)
    visit root_path
    click_link 'New Reservation'
    click_button 'Create Reservation'
    expect(page).to have_content('errors')
  end

  scenario 'Camper shows as checked in on master list' do
    FactoryGirl.create(:reservation, checked_in: true)
    visit reservations_path
    expect(page).to have_content('Checked In')
  end

  scenario 'Camper does not show as checked in on master list' do
    FactoryGirl.create(:reservation, checked_in: false)
    visit reservations_path
    expect(page).to have_no_content('Checked In')
  end

  scenario 'User checks in from the master list of reservations' do
    FactoryGirl.create(:reservation, checked_in: false)
    visit reservations_path
    click_link('Check In')
    expect(page).to have_content('Checked In')
  end

  scenario 'User views reservation details' do
    reservation = FactoryGirl.create(:reservation)
    visit reservations_path
    click_link reservation.id
    expect(page).to have_content "Reservation #{reservation.id}"
  end

  scenario 'User updates a reservation' do
    reservation = FactoryGirl.create(:reservation)
    visit reservations_path
    click_link reservation.id
    fill_in 'Adults', with: '2'
    click_button 'Update Reservation'
    expect(page).to have_content("Updated reservation ##{reservation.id}")
  end

  scenario 'User updates a reservation with invalid data' do
    reservation = FactoryGirl.create(:reservation)
    visit reservations_path
    click_link reservation.id
    fill_in 'Arrive', with: nil
    click_button 'Update Reservation'
    expect(page).to have_content('1 error')
  end
end
