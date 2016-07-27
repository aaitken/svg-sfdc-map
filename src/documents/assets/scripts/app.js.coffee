blue = '#0000ff'

activate = (configurations)->

  makeCallback = (url)->  
    ->
      go(url)

  for configuration, options of configurations
    for part, id of options.parts
      $("##{id}")
        .css('cursor', 'pointer')
        .click makeCallback(options.url)
      if part is 'text'
        $("##{id}").velocity({fill: blue})

go = (url)->
  #window.location.href = url
  window.open(url)

#=======

activate(window.CONFIG) 

$('#labelMock').click ->
  $('#slider')[0].value = 1
$('#labelMap').click ->
  $('#slider')[0].value = 0

$('#slider').change ->
  $('#map').css('opacity', 1-@value)
