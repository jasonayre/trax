console.log('sidebar required');
angular.module('admin.controllers.layout').controller('SidebarController', ["$scope", function($scope) {
    $scope.$root.sidebar_visible = true;
    
    $scope.items = [
      {name: 'dashboard', icon: 'tachometer', path: "channels"},
      {name: 'channels', icon: 'channels', path: 'channels'},
      {name: 'entries', icon_class: 'pencil', path: 'entries'}
    ];
    
  }]
);