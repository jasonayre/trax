angular.module("admin.entries").config(['$routeProvider', 'ADMIN_TEMPLATES', function($routeProvider, ADMIN_TEMPLATES) {
  $routeProvider.when('/channels', {
    templateUrl: ADMIN_TEMPLATES['entries']['index'],
    controller: "EntriesIndexController"
  });
  
  $routeProvider.when('/entries/:resource_id', {
    templateUrl: ADMIN_TEMPLATES['entries']['show'],
    controller: "EntriesShowController"
  });
  
  $routeProvider.otherwise({
    templateUrl: ADMIN_TEMPLATES['entries']['index'],
    controller: "EntriesIndexController"
  });
}]);