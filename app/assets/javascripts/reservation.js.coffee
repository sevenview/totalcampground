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

# When an existing camper is selected, copy the camper ID into the hidden
# Reservation form field
$('#camper_id').change (e) ->
  $('#reservation_camper_id').val($(this).val())

# Set the existing Camper dropdown to the value in the hidden Reservation
# form field. This is for when the value is set on a postback after validation
# error(s)
$('#camper_id').val($('#reservation_camper_id').val())
