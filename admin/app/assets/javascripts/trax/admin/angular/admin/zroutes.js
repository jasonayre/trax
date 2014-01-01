//= require_self
//= require_directory ./routes/

angular.module("admin", ['admin.controllers.channels', 'admin.controllers.entries', 'admin.controllers.layout', 'admin.templates', 'ui.router', 'common.services', 'ngTagsInput', 'common.directives']);

