console.log('sidebar required');
angular.module('admin.controllers.layout').controller('SidebarController',
  ["$scope", "Templates", function($scope, Templates) {
    console.log('sidebar init');
    $scope.visible = true;
    $scope.heading = "blah";
    
    $scope.items = [
      {name: 'dashboard', icon: 'tachometer', link: 'blah'},
      {name: 'channels', icon: 'channels', link: 'channels'},
      {name: 'entries', icon_class: 'pencil', link: 'entries'}
    ];
    
  }]
);