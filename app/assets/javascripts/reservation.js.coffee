# Add a new camper from the Reservation form
$('#new_camper').click (e) ->
  $('#reservation_existing_camper').slideUp()
  $('#reservation_new_camper').slideDown()
  e.preventDefault()

$('#existing_camper').click (e) ->
  $('#reservation_existing_camper').slideDown()
  $('#reservation_new_camper').slideUp()
  e.preventDefault()

  # after camper is added, show existing camper panel
  # select the new camper in the existing camper panel
