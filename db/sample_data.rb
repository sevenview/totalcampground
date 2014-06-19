# Reservations
puts "Reservations..."
Reservation.delete_all

30.times do
  start_date = Date.today + rand(0..100)
  end_date = start_date + rand(1..30)
  Reservation.create(
    start_date: start_date,
    end_date:   end_date,
    name:       Faker::Name.name,
    adults:     rand(1..10)
  )
end

# Campers
puts "Campers..."
Camper.delete_all
FactoryGirl.create_list(:camper, 30)
