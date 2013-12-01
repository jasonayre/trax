angular.module('admin.controllers.entries').controller('EntriesIndexController',
  ["$scope", "Entry", "Templates", "$stateParams", function($scope, Channel, Templates, $stateParams) {
    console.log('entries index controller');
    // Templates.fetch('channels');
    
    console.log($stateParams);
    
    $scope.page_header_visible = true;
    
    $scope.$root.active_controller_settings = {has_header: true};

    $scope.has_header = false;
    
    $scope.fetchCollection = function () {
      console.log('fetching collection');
      $scope.$root.primary_view_loading = true;
      Entry.query().then(function (result) {
        $scope.collection = result;
        $scope.collection_is_loading = false;
      });
    };
    
    $scope.fetchCollection();
    
    // $scope.show = function (resource) {
    //   console.log(resource);
    //   Channel.get({id: resource.id}).then(function (result){
    //     console.log(result);
    //   });
    // };
    
    // $scope.pop = function() {
    //   resource = $scope.collection.pop();
    //   resource.delete().then(function(result){
    //     console.log(result);
    //   });
    // }
        
    $scope.destroy = function(index) {
      $scope.$root.primary_view_loading = true;
      resource = $scope.collection[index];

      resource.remove().then(function (result){
        $scope.collection.splice(index, 1);
        console.log(result);
        $scope.$root.primary_view_loading = false;
      });
    };
    
  }]
);