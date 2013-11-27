angular.module("admin").config(['$routeProvider', 'ADMIN_TEMPLATES', function($routeProvider, ADMIN_TEMPLATES) {
  console.log('adminchanelsrouterinit');
  $routeProvider.when('/channels', {
    templateUrl: ADMIN_TEMPLATES['channels']['index'],
    controller: "ChannelsIndexController"
  });
  
  $routeProvider.when('/channels/:resource_id', {
    templateUrl: ADMIN_TEMPLATES['channels']['show'],
    controller: "ChannelsShowController"
  });
  
  $routeProvider.when('/channels/:resource_id/edit', {
    templateUrl: ADMIN_TEMPLATES['channels']['form'],
    controller: "ChannelsFormController"
  });
  
  $routeProvider.when('/channels/new', {
    templateUrl: ADMIN_TEMPLATES['channels']['form'],
    controller: "ChannelsFormController"
  });
  
  $routeProvider.otherwise({
    templateUrl: ADMIN_TEMPLATES['channels']['index'],
    controller: "ChannelsIndexController"
  });
}]);
