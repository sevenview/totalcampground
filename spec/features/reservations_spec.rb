require 'rails_helper'

feature "Reservations", type: :feature do
  scenario "Views the list of reservations" do
    reservation = FactoryGirl.create(:reservation)
    visit reservations_path
    expect(page).to have_selector('h1', text: 'Reservations')
    expect(page).to have_content reservation.camper.full_name
  end
end
