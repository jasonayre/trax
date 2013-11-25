angular.module('admin.channels.controllers').controller('ChannelsIndexController',
  ["$scope", "Channel", "$routeParams", "$location", "Templates", function($scope, Channel, $routeParams, $location, Templates) {
    Templates.fetch('channels');
    
    $scope.heading = "I AM CHANNELS INDEX CONTROLLER";    
    
  }]
);