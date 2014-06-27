$(document).on 'page:change', ->
  $('[data-behaviour~=datepicker]').datepicker
    todayBtn: 'linked'
    todayHighlight: true
    autoclose: true
    format: 'yyyy/mm/dd'
