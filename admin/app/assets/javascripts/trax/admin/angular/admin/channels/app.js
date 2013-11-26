//= require_self
//= require_tree .

angular.module("admin.channels", []);

admin["channels"] = angular.module("admin.channels", ["ng", "rails", "admin.controllers", "admin.channels.controllers", 'admin.directives', 'admin.filters', 'admin.services', 'ui.bootstrap', 'common.directives', 'common.services', 'common.filters']);

admin["channels"].config(function(railsSerializerProvider){
   railsSerializerProvider.
   underscore(function (name) {
     return name;
   }).
   camelize(function (name) {
     return name;
   });
});



