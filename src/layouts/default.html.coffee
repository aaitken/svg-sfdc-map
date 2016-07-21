--- cson

styles: [
  '/assets/styles/normalize.css',
  '/assets/styles/app.css']

scripts: [
  '/assets/scripts/jquery.js']

---

doctype 5
html ->
  head ->
    meta charset:"utf-8"
    meta name:"viewport", content:"width=device-width, initial-scale=1.0"
    title "Prologis Nav Scheme"
    #insert styles using frontend plugin
    for url in @assets('styles')
      link rel:"stylesheet", href:url, media:"all"
  body ->
    text @content
    #this picks up incrementally-named document scripts as well
    for url in @assets('scripts')
      script src:url, defer:"defer"
