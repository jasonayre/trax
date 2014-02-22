//= require_self
//= require_directory ./routes/

angular.module('admin', [
  "ng",
  "rails",
  "ui",
  "ui.bootstrap",
  "ui.router",
  "ui.select2",
  "common",
  "common.directives",
  "common.ngTagsInput",
  "common.services",
  "admin.controllers.channels",
  "admin.controllers.entries",
  "admin.controllers.layout",
]).config(["railsSerializerProvider", function(railsSerializerProvider) {
  railsSerializerProvider.underscore(angular.identity).camelize(angular.identity);
}]);
