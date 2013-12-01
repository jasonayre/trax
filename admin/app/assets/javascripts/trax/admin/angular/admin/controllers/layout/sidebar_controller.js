console.log('sidebar required');
angular.module('admin.controllers.layout').controller('SidebarController', ["$scope", function($scope) {
    $scope.$root.sidebar_visible = true;
    
    $scope.items = [
      {name: 'dashboard', icon: 'dashboard', path: "channels"},
      {name: 'channels', icon: 'desktop', path: 'channels'},
      {name: 'entries', icon: 'pencil', path: 'entries'}
    ];
    
  }]
);