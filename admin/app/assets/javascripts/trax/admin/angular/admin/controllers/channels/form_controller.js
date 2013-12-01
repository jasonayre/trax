angular.module('admin.controllers.channels').controller('ChannelsFormController',
  ["$scope", "Channel", "$stateParams", "resource", "Protos", function($scope, Channel, $stateParams, resource, Protos) {
    $scope.trax = Protos;
    
    $scope.resource = resource;

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