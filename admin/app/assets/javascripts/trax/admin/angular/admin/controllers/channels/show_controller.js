angular.module('admin.controllers.channels').controller('ChannelsShowController',
  ["$scope", "Channel", "$stateParams", function($scope, Channel, $stateParams) {
    console.log('CHANNELS SHOW CONTROLLER INIT');
    // Templates.fetch('channels');
    
    $scope.$root.active_controller_settings = {has_header: false};
    
    $scope.$root.page_header = {title: "Channels SHOW VIEW", description: "Showing channels taxonomy"};
    // $scope.$root.page_header = {title: $scope., description: "The primary taxonomy"};    
    $scope.heading = "I AM CHANNELS SHOW CONTROLLER";
    
    // $scope.fetchResource = function () {
    //   console.log('fetching resource');
    //   $scope.resource_is_loading = true;
    //   Channel.query({id: $routeParams.id}).then(function (result) {
    //     $scope.resource = result;
    //     $scope.resource_is_loading = false;
    //   });
    // };
    // 
    // $scope.fetchResource();
    
  }]
);