ready = ->
    set_positions()
    $('.sortable').sortable()
    $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
      updated_order = []
      $('.card').each (i) ->
        updated_order.push
          id: $(this).data('id')
          position: i + 1
      $.ajax
        type: "PATCH",
        url: "/portfolios/sort",
        data:
          order: updated_order

set_positions = ->
  $('.card').each (e) ->
    $(this).attr 'data-pos', e + 1

$(document).ready ready
