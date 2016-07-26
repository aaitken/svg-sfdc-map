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

  activate({
    appLauncher: {
      parts: {
        text: 'path6457',
        box: 'path6453'
      },
      url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174030062'
    },
    LeasingManagement: {
      parts: {
        text: 'path6463',
        box: 'path6459'
      },
      url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174030071'
    },
    cdp: {
      parts: {
        text: 'path6469',
        box: 'path6465'
      },
      url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174027625'
    },
    leasing: {
      parts: {
        text: 'path6481',
        box: 'path6477'
      },
      url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174030049'
    },
    developments: {
      parts: {
        text: 'path6690',
        box: 'path6686'
      },
      url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174027615'
    },
    pipeline: {
      parts: {
        text: 'path6724',
        box: 'path6720'
      },
      url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174027608'
    },
    deal: {
      parts: {
        text: 'path6764',
        box: 'path6760'
      },
      url: 'https://projects.invisionapp.com/share/2R7YP92JB#/screens/174027605'
    },
    opportunity: {
      parts: {
        text: 'path6656',
        box: 'path6652'
      },
      url: 'http://uxmob.herokuapp.com/#/opportunity-overview?0'
    }
  });

}).call(this);
