//= require_self
//= require_directory .

//= require_directory ./common/
//= require_directory ./admin/

var app = {};
app["admin"] = angular.module('admin', []);
app["admin"] = angular.module('admin', ["ng", "rails", "ui", "ui.bootstrap", "ui.router", "ui.select2", 'common', 'common.directives', 'common.services', 'admin.services', 'admin.controllers']);

app["admin"].config(function(railsSerializerProvider){
   railsSerializerProvider.
   underscore(function (name) {
     return name;
   }).
   camelize(function (name) {
     return name;
   });
});

window["app"] = app;
