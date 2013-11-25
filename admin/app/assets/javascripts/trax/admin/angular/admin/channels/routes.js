angular.module("admin.channels").config(['$routeProvider', 'ADMIN_TEMPLATES', function($routeProvider, ADMIN_TEMPLATES) {
  console.log(ADMIN_TEMPLATES);
  console.log('adminchanelsrouterinit');
  $routeProvider.when('/channels', {
    templateUrl: ADMIN_TEMPLATES['channels']['index'],
    controller: "ChannelsIndexController"
  });
  
  $routeProvider.when('/channels/:resource_id', {
    templateUrl: ADMIN_TEMPLATES['channels']['show'],
    controller: "ChannelsShowController"
  });
  
  $routeProvider.otherwise({
    templateUrl: ADMIN_TEMPLATES['channels']['index'],
    controller: "ChannelsIndexController"
  });
}]);