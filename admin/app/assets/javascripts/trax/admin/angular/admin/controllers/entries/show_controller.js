angular.module('admin.controllers.entries').controller('EntriesShowController',
  ["$scope", "Entry", "$stateParams", function($scope, Entry, $stateParams) {
    $scope.$root.active_controller_settings = {has_header: false};
    
    $scope.$root.page_header = {title: "Entrys SHOW VIEW", description: "Showing entries"};
    $scope.heading = "I AM CHANNELS SHOW CONTROLLER";
  }]
);