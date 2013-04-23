require.config({
  paths: {
    'cs': 'lib/cs',
    'text': 'lib/text',
    'jquery': 'lib/jquery',
    'rivets': 'lib/rivets',
    'backbone': 'lib/backbone',
    'underscore': 'lib/underscore',
    'coffee-script': 'lib/coffee-script'
  },
  shim: {
    underscore: {
      exports: '_'
    },
    backbone: {
      exports: 'Backbone',
      deps: [
        'jquery',
        'underscore'
      ]
    }
  }
});