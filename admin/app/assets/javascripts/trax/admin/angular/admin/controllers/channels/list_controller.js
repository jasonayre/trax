angular.module('admin.controllers.channels').controller('ChannelsListController',
  ["$scope", "Channel", "Protos", function($scope, Channel, Protos) {
    $scope.page_header_visible = true;

    $scope.$root.active_controller_settings = {has_header: true};

    $scope.fetchCollection = function () {
      console.log('fetching collection');
      Channel.query().then(function (result) {
        $scope.collection = result;
      });
    };

    $scope.fetchCollection();

    $scope.destroy = function(index) {
      resource = $scope.collection[index];
      $scope.$root.primary_view_loading = true;

      resource.remove().then(function (result){
        $scope.collection.splice(index, 1);
        $scope.$root.primary_view_loading = false;
      });
    };

  }]
);