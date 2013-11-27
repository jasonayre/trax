angular.module('common.controllers').controller('SidebarController', ["$scope", function($scope) {
  $scope.navigation_items = [
    {
      name: "Dashboard",
      path: "dashboard",
      icon_klass: "tachometer" 
    },
    {
      name: "Channels",
      path: "channels",
      icon_klass: "channels"
    },
    {
      name: "Entries",
      path: "Entries",
      icon_klass: "pencil"
    }
  ];
  
  $scope.visible = true;
  
  
}]);