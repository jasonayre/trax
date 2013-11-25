//= require_self
//= require_tree ./services
angular.module('common.services', ['rails']);

angular.module('common.services').config(["$httpProvider", "$locationProvider", "$provide", function ($httpProvider, $locationProvider, $provide) {
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = angular.element('meta[name=csrf-token]').attr('content');
  $locationProvider.html5Mode(true);
}]);
