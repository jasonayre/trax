//= require_self
//= require_directory ./controllers/

angular.module("admin.controllers", []);
angular.module('admin.controllers', ['admin', 'admin.services', 'common.services', 'admin.templates', "ui.select2", "common.directives"]);