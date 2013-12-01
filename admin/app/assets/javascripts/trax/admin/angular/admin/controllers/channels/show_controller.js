angular.module('admin.controllers.channels').controller('ChannelsShowController',
  ["$scope", "Channel", "$stateParams", function($scope, Channel, $stateParams) {
    console.log('CHANNELS SHOW CONTROLLER INIT');
    // Templates.fetch('channels');
    
    $scope.$root.active_controller_settings = {has_header: false};
    
    $scope.$root.page_header = {title: "Channels SHOW VIEW", description: "Showing channels taxonomy"}; 
    $scope.heading = "I AM CHANNELS SHOW CONTROLLER";    
  }]
);