angular.module('admin.controllers.entries').controller('EntriesFormController',
  ["$scope", "$stateParams", "resource", "Tag", function($scope, $stateParams, resource, Tag) {
    console.log($scope.resource);
    $scope.resource = resource;
    
    $scope.field_options = {
      routing_strategies: {
        'restful': 'RESTFUL',
        'static': 'STATIC'
      }
    };

    $scope.save = function() {
      $scope.$root.primary_view_loading = true;
      
      $scope.resource.save().then(function (result) {
        $scope.resource = result;
        console.log('result waas', result);
        $scope.$root.primary_view_loading = false;
      });
    };
    
  }]
);