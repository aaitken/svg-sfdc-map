(function() {
  var activate, blue, go;

  blue = '#0000ff';

  activate = function(configurations) {
    var configuration, id, makeCallback, options, part, results;
    makeCallback = function(url) {
      return function() {
        return go(url);
      };
    };
    results = [];
    for (configuration in configurations) {
      options = configurations[configuration];
      results.push((function() {
        var ref, results1;
        ref = options.parts;
        results1 = [];
        for (part in ref) {
          id = ref[part];
          $("#" + id).css('cursor', 'pointer').click(makeCallback(options.url));
          if (part === 'text') {
            results1.push($("#" + id).velocity({
              fill: blue
            }));
          } else {
            results1.push(void 0);
          }
        }
        return results1;
      })());
    }
    return results;
  };

  go = function(url) {
    return window.open(url);
  };

  activate(window.CONFIG);

  $('#labelMock').click(function() {
    return $('#slider')[0].value = 1;
  });

  $('#labelMap').click(function() {
    return $('#slider')[0].value = 0;
  });

  $('#slider').change(function() {
    return $('#map').css('opacity', 1 - this.value);
  });

}).call(this);
