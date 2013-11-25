angular.module('admin.entries.controllers').controller('EntriesShowController',
  ["$scope", "Entry", "$routeParams", "$location", "Templates", function($scope, Entry, $routeParams, $location, Templates) {
    Templates.fetch('entries');
    
    $scope.heading = "I AM Entry SHOW CONTROLLER";
    
  }]
);