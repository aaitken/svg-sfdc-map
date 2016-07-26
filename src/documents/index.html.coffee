--- cson

layout: 'default'

---


div class:"map", ->
  @partial('160725-nav-horiz.svg')

div class:"slider", ->
  label "Map"
  input id:"slider", type:"range", min:"0", max:"100", step:"1"
  label "Mock"
