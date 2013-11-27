angular.module('admin.controllers.layout').controller('HeaderController', ["$scope", function($scope) {
  $scope.$root.header_visible = true;
  
  console.log('headercontrollerrrrrr');
  
  $scope.dropdown_groups = [
    {
      name: "Content",
      icon_class: "cog",
      has_children: true,
      href: "#",
      children: [
        { name: "Channels", path: "channels", icon_klass: "channels"},
        { name: "Entries", path: "entries", icon_klass: "settings"}
      ]
    }
  ];
  
}]);

console.log('headerbottom');