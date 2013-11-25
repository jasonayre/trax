angular.module('admin.channels.controllers').controller('ChannelsIndexController',
  ["$scope", "Channel", "$routeParams", "$location", "Templates", function($scope, Channel, $routeParams, $location, Templates) {
    Templates.fetch('channels');
    console.log('channels controller init');
    $scope.heading = "I AM CHANNELS INDEX CONTROLLER";    
    
  }]
);