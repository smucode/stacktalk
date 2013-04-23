module.exports['tests'] = {
  libs: [
    'lib/require.js',
    'conf/require.js'
  ],
  resources: [
    'lib/*.js',
    'conf/*.coffee'
  ],
  sources: [
    'src/**/*.html',
    'src/**/*.coffee'
  ],
  tests: [
    'src/**/test/*.coffee'
  ],
  extensions: [
    require('buster-amd')
  ],
  'buster-amd': {
    pathMapper: function (path) {
      return 'cs!' + path.replace(/^\//, '').replace(/\.coffee$/, '');
    }
  }
};