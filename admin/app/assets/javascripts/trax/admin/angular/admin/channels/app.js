
angular.module("admin.channels", []);
angular.module("admin.channels.services", []);

admin["channels"] = angular.module("admin.channels", ["ng", "rails", 'admin.controllers', 'admin.directives', 'admin.filters', 'admin.services', 'ui.bootstrap', 'common.directives', 'common.services', 'common.filters']);
//= require_self
//= require_tree .


