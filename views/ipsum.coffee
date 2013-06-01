$(document).ready ->
  refresh_button = $('.new_one')
  requested_paragraphs = $('.new_one_para')

  requested_paragraphs.on('click', (e) ->
    e.stopPropagation())
  refresh_button.on('click', ->
    value = requested_paragraphs.val()
    if value != '5'
      $.ajax(url: "/raw_ipsum/" + value).done (html) ->
        $('.ipsum').html(html)
    else
      $.ajax(url: "/raw_ipsum").done (html) ->
        $('.ipsum').html(html)
    )
