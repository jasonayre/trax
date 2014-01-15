angular.module('admin.controllers.layout').controller('HeaderController', ["$scope", function($scope) {
  $scope.$root.header_visible = true;
  $scope.$root.app_is_syncing = false;
  $scope.$root.syncing_status_message = '';
  
  $scope.dropdown_groups = [
    {
      name: "Content",
      icon_class: "cog",
      has_children: true,
      href: "#",
      children: [
        { name: "Channels", path: "channels", icon_klass: "channels"},
        { name: "Entries", path: "entries", icon_klass: "settings"},
        { name: "Menus", path: "menus", icon_klass: "menus" }
      ]
    }  
  ];
  
}]);