angular.module('admin.controllers.entries').controller('EntriesListController',
  ["$scope", "Entry", function($scope, Entry) {
    
    $scope.fetchCollection = function () {
      console.log('fetching collection');
      // if channel present
      if($scope.resource) {
        $scope.resource.entries().then(function(result){
          $scope.collection = result;
        });
      } else {
        Entry.query().then(function (result) {
          $scope.collection = result;
        });
      }
    };

    $scope.fetchCollection();

    $scope.destroy = function(index) {
      console.log('ENTRIES DESTROY CALLED');
      resource = $scope.collection[index];

      resource.remove().then(function (result){
        $scope.collection.splice(index, 1);
      });
    };

  }]
);