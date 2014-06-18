# Reservations
puts "Reservations..."
Reservation.delete_all

30.times do
  Reservation.create(
    start_date: Date.today,
    end_date:   (Date.today + 2),
    name: Faker::Name.name,
    adults: rand(1..10)
  )
end
