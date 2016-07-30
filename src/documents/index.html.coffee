--- cson

layout: 'default'

---


div id:"mocks", class:"mocks", ->
  img src:"http://prologis.s3.amazonaws.com/map/CDP%20-%20Home%201.0.0.png"

div id:"map", class:"map", ->
  @partial('160725-nav-horiz.svg')

div class:"bar", ->
  div class:"slider", ->
    label id:"labelMap", "Map"
    input id:"slider", type:"range", min:"0", max:"1", step:"0.01"
    label id:"labelMock", "Mock"
