# Reservations
puts "Reservations..."
Reservation.delete_all

# Campers
puts "Campers..."
Camper.delete_all
FactoryGirl.create_list(:camper, 30)

# Lots
puts "Lots..."
Lot.delete_all
FactoryGirl.create_list(:lot, 250)

30.times do
  start_date = Date.today + rand(0..100)
  end_date = start_date + rand(1..30)
  # Pull out a random camper and lot
  camper = Camper.offset(rand(Camper.count)).first
  lot    = Lot.offset(rand(Lot.count)).first
  Reservation.create(
    start_date: start_date,
    end_date:   end_date,
    name:       Faker::Name.name,
    adults:     rand(1..10),
    camper:     camper,
    lot:        lot
  )
end