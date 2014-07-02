# Fixes problem with Turbolinks causing autofocus attribute on fields to not
# work on intial load.
$(document).bind 'page:load', ->
  $('input[autofocus="autofocus"]').focus()
