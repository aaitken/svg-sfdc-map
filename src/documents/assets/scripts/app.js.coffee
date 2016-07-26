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

activate 
  
  appLauncher:
    parts:
      text: 'path6457'
      box: 'path6453'
    url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174030062'

  LeasingManagement:
    parts:
      text: 'path6463'
      box: 'path6459'
    url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174030071'

  cdp:
    parts:
      text: 'path6469'
      box: 'path6465'
    url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174027625'

  leasing:
    parts:
      text: 'path6481'
      box: 'path6477'
    url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174030049'

  developments:
    parts:
      text: 'path6690'
      box: 'path6686'
    url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174027615'

  pipeline:
    parts:
      text: 'path6724'
      box: 'path6720'
    url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174027608'

  deal:
    parts:
      text: 'path6764'
      box: 'path6760'
    url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174027605'

  opportunity:
    parts:
      text: 'path6656'
      box: 'path6652'
    url: 'http://uxmob.herokuapp.com/#/opportunity-overview?0'
