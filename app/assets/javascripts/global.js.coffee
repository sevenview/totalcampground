$(document).on 'page:change', ->
  # Initialize date pickers
  $('[data-behaviour~=datepicker]').datepicker
    todayBtn: 'linked'
    todayHighlight: true
    autoclose: true
    format: 'yyyy/mm/dd'

  # Initialize Bootstrap Note popovers
  $('.note-popover').popover()
