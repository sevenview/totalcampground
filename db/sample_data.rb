# Campers
puts 'Campers...'
Camper.delete_all
FactoryGirl.create_list(:camper, 30)

# Reservations
puts 'Reservations...'
Reservation.delete_all
30.times do
  start_date = Date.today + rand(0..100)
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
    checked_in: [true, false].sample
  )
end

# Users
puts 'Users...'
User.delete_all
User.create!(email: ENV['SAMPLE_ADMIN_EMAIL'], password: ENV['SAMPLE_ADMIN_PASSWORD'])

# Streets
puts 'Streets...'
Street.delete_all
Street.create!(name: 'Cat St. West')
Street.create!(name: 'Cat St. East')
Street.create!(name: 'Sunset Drive')
Street.create!(name: 'Lakeside Drive')
Street.create!(name: 'Starview Drive')
Street.create!(name: 'Pondside Drive')
Street.create!(name: 'Paradise Point')
Street.create!(name: 'Tenter\'s Delight')

# Lots
puts 'Lots...'
Lot.delete_all
# random number of lots on each street
Street.all.each do |street|
  rand(40).times do |n|
    Lot.create!(
      number: n + 1,
      street: street
    )
  end
end
