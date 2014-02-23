//= require_self
//= require_directory ./routes/

angular.module('admin', [
  "ng",
  "rails",
  "ui",
  "ui.bootstrap",
  "ui.router",
  "ui.select2",
  'angular-growl',
  // 'chieffancypants.loadingBar',
  "common",
  "common.directives",
  "common.filters",
  "common.ngTagsInput",
  "common.services",
  "admin.controllers.channels",
  "admin.controllers.entries",
  "admin.controllers.layout"
]).config(["railsSerializerProvider", function(railsSerializerProvider) {
  railsSerializerProvider.underscore(angular.identity).camelize(angular.identity);
}]).run(function ($rootScope, $state) {
    // $state.transitionTo('channels.index');
    // $rootScope.$log = $log;
    $rootScope.$state = $state;
});
