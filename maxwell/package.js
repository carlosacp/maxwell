Package.describe({
  name: 'carlosacp:maxwell',
  version: '0.0.1',
  summary: '',
  git: '',
  documentation: 'README.md',
  debugOnly: true
});

Package.onUse(function(api) {

  api.versionsFrom('1.1.0.2');

  api.use([
    "templating",
    "coffeescript",
    "mquandalle:stylus",
    "mquandalle:jade@0.4.1",
  ], 'client');

  api.addFiles([
    'client/maxwell.coffee',
    'client/maxwell.styl',
    'client/maxwell.jade',
  ], 'client');

});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('carlosacp:maxwell');
  api.addFiles('maxwell-tests.js');
});
