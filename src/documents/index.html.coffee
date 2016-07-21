--- cson

layout: 'default'

---

div class:"controls", ->
  p ->
    input type:"radio", name:"toggle", id:"toggle1", value:"map"
    label for:"toggle1", ->
      text "&nbsp;Map"
  p ->
    input type:"radio", name:"toggle", id:"toggle2", value:"mock"
    label for:"toggle2", ->
      text "&nbsp;Mock"

div class:"map", ->
  object type:"image/svg+xml", data:"/assets/images/160720-nav-horiz.svg"

#div class:"mock", ->
