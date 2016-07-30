--- cson

layout: 'default'

---


div id:"map", class:"map", ->
  @partial('160725-nav-horiz.svg')

div class:"bar", ->
  div class:"slider", ->
    label id:"labelMap", "Map"
    input id:"slider", type:"range", min:"0", max:"1", step:"0.01"
    label id:"labelMock", "Mock"
