# Reset data
Camper.delete_all
User.delete_all
Street.delete_all
Lot.delete_all
Reservation.delete_all
RvType.delete_all

# Campers
puts 'Campers...'
FactoryGirl.create_list(:camper, 30)

# Users
puts 'Users...'
User.create!(email: ENV['SAMPLE_ADMIN_EMAIL'], password: ENV['SAMPLE_ADMIN_PASSWORD'])

# Streets
puts 'Streets...'
Street.create!(name: 'Catamaran Street West')
Street.create!(name: 'Catamaran Street East')
Street.create!(name: 'Sunset Drive')
Street.create!(name: 'Lakeview Drive')
Street.create!(name: 'Starview Drive')
Street.create!(name: 'Pondside Drive')
Street.create!(name: 'Paradise Point')
Street.create!(name: 'Tenter\'s Delight')
Street.create!(name: 'Moonlight Drive')
Street.create!(name: 'Rainbow Drive')
Street.create!(name: 'Waterside Lookout')
Street.create!(name: 'Brookside')

# RV Types
puts 'RV Types...'
[
  '5th Wheel', 'Cabin', 'Class A', 'Fold Down', 'Hybrid', 'Motor Coach',
  'Motor Towing', 'Motorhome', 'Popup', 'Tent', 'Travel Trailer',
  'Truck Camper', 'Van', 'Yurt', 'Hardtop'
].each { |name| RvType.create!(name: name) }

# Lots
puts 'Lots...'
# random number of lots on each street
Street.all.each do |street|
  rand(40).times do |n|
    Lot.create!(
      number: n + 1,
      street: street
    )
  end
end

# Reservations
puts 'Reservations...'
30.times do
  start_date = Date.today + rand(-30..100)
  end_date = start_date + rand(1..30)
  # Pull out a random camper and lot
  camper = Camper.offset(rand(Camper.count)).first
  lot    = Lot.offset(rand(Lot.count)).first
  Reservation.create!(
    start_date: start_date,
    end_date:   end_date,
    adults:     rand(1..10),
    camper:     camper,
    lot:        lot,
    checked_in: [true, false].sample,
    security_card_number: rand(100),
    notes: Faker::Lorem.paragraph
  )
end
