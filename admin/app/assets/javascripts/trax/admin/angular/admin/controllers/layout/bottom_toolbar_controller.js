angular.module('admin.controllers.layout').controller('BottomToolbarController', [
  "$scope", function($scope) {
    $scope.$root.bottom_toolbar_visible = true;
    
    $scope.tags_list = ['blah'];
    
    console.log($scope.tags_list);
  }]
);