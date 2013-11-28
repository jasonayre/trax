angular.module('admin.controllers.channels').controller('ChannelsResourceController',
  ["$scope", "Channel", "$stateParams", function($scope, Channel, $stateParams) {
    
    console.log('I AM RESOLVED RESOURCE', $scope.resource);

    console.log('resource controller init');
    $scope.heading = "I AM CHANNELS RESOURCE CONTROLLER";
    console.log($stateParams);
    
    // $scope.fetchResource = function () {
    //   console.log('fetching resource');
    //   $scope.resource_is_loading = true;
    //   Channel.get({id: $stateParams.id}).then(function (result) {
    //     console.log(result);
    //     $scope.resource = result;
    //     $scope.resource_is_loading = false;
    //   });
    // };
    
    // if($stateParams.id) {
    //   $scope.fetchResource();
    // } else {
    //   $scope.resource = {};
    //   $scope.resource = new Channel({name: "Channel Name"});
    //   $scope.resource_is_loading = false;
    // };
    // 
    $scope.createOrUpdate = function() {
      
    };
  }]
);