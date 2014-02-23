//= require_self
//= require_directory .

//= require_directory ./common/
//= require_directory ./admin/

var app = {};

app["admin"] = angular.module('admin', ['common']);

window["app"] = app;


