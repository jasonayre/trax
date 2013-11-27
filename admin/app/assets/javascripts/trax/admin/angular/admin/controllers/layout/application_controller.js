console.log('sidebar required');
angular.module('admin.controllers.layout').controller('ApplicationController',
  ["$scope", function($scope) {
    console.log('application controller init');
    
    $scope.visible = true;
    $scope.heading = "blah";
    
    $scope.header_visible = true;
    
    $scope.toolbar_items = [{name: 'asdfgh', icon: 'tachometer', path: "channels"}];
    
  }]
);