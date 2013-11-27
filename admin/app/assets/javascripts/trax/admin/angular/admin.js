//= require_self
//= require_directory .

//= require_directory ./common/
//= require_directory ./admin/

console.log('ADMINJS REQUIRED');

var app = {};
app["admin"] = angular.module('admin', ["ng", "rails", "ui.bootstrap"]);

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
// window["admin"] = ;
// angular.module("admin.controllers", []);

