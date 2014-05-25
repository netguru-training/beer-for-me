$(document).ready ()->
  $('.fa-plus').click ()->
    quantityField = $(this).parent().parent().find('#order_items__quantity')
    quantityFieldValue = parseInt quantityField.attr("value")
    quantityField.attr("value", quantityFieldValue + 1)
  $('.fa-minus').click ()->
    quantityField = $(this).parent().parent().find('#order_items__quantity')
    quantityFieldValue = parseInt quantityField.attr("value")
    return true if quantityFieldValue < 1
    quantityField.attr("value", quantityFieldValue - 1)

