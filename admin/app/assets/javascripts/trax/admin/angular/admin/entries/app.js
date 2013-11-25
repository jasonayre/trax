//= require_self
angular.module("admin.entries", []);
angular.module("admin.entries.services", []);

admin["entries"] = angular.module("admin.entries", ["ng", "rails", 'admin.controllers', 'admin.directives', 'admin.filters', 'admin.services', 'ui.bootstrap', 'common.directives', 'common.services', 'common.filters']);
//= require_tree .

