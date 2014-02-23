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
  'ngAnimate',
  "ngSanitize",
  "common",
  "common.directives",
  "common.filters",
  "common.ngTagsInput",
  "common.services",
  "admin.controllers.channels",
  "admin.controllers.entries",
  "admin.controllers.layout"
]).config(["railsSerializerProvider", "growlProvider", "$httpProvider", function(railsSerializerProvider, growlProvider, $httpProvider) {
  //angular-rails-resource config
  railsSerializerProvider.underscore(angular.identity).camelize(angular.identity);
  
  //angular-growl config
  growlProvider.messagesKey("messages");
  growlProvider.messageTextKey("text");
  growlProvider.messageSeverityKey("severity");
  growlProvider.onlyUniqueMessages(true);
  growlProvider.globalTimeToLive(5000);
  growlProvider.globalEnableHtml(true);
  $httpProvider.responseInterceptors.push(growlProvider.serverMessagesInterceptor);
}]).run(function ($rootScope, $state) {
  $rootScope.$state = $state;
});
