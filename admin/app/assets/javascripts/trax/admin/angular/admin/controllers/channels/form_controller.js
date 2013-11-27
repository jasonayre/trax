angular.module('admin.controllers.channels').controller('FormController',
  ["$scope", "Channel", "$routeParams", "$location", "Templates", function($scope, Channel, $routeParams, $location, Templates) {
    Templates.fetch('channels');
    
    $scope.heading = "I AM CHANNELS FORM CONTROLLER";
    
    
    
  }]
);