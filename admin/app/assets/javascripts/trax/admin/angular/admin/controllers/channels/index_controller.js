angular.module('admin.controllers.channels').controller('ChannelsIndexController',
  ["$scope", "Channel", "Templates", "$stateParams", "Protos", function($scope, Channel, Templates, $stateParams, Protos) {
    console.log(Protos);

    $scope.page_header_visible = true;
    
    $scope.$root.active_controller_settings = {has_header: true};
    $scope.$root.page_header = {title: "Channels", description: "The primary taxonomy"};

    $scope.has_header = false;
    
    $scope.fetchCollection = function () {
      console.log('fetching collection');
      $scope.collection_is_loading = true;
      Channel.query().then(function (result) {
        $scope.collection = result;
        $scope.collection_is_loading = false;
      });
    };
    
    $scope.fetchCollection();
            
    $scope.destroy = function(index) {
      resource = $scope.collection[index];

      resource.remove().then(function (result){
        $scope.collection.splice(index, 1);
        console.log(result);
      });
    };
    
  }]
);