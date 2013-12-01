angular.module('admin.controllers.channels').controller('ChannelsResourceController',
  ["$scope", "Channel", "$stateParams", function($scope, Channel, $stateParams) {
    
    console.log('I AM RESOLVED RESOURCE', $scope.resource);

    console.log('resource controller init');
    $scope.heading = "I AM CHANNELS RESOURCE CONTROLLER";
    console.log($stateParams);
    
  }]
);