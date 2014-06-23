require 'rails_helper'

feature 'Reservations', type: :feature do
  scenario 'Views the list of reservations' do
    reservation = FactoryGirl.create(:reservation)
    visit reservations_path
    expect(page).to have_selector('h1', text: 'Reservations')
    expect(page).to have_content reservation.camper.full_name
  end

  scenario 'User adds a new reservation' do
    camper = FactoryGirl.create(:camper)
    lot = FactoryGirl.create(:lot)
    visit root_path
    click_link 'New Reservation'
    select camper.full_name, from: 'reservation_camper_id'
    fill_in 'Arrive', with: '2014-06-19'
    fill_in 'Depart', with: '2014-06-20'
    fill_in 'Adults', with: '2'
    fill_in 'Children', with: '3'
    fill_in 'Pets', with: '1'
    select lot.name, from: 'reservation_lot_id'
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
end
