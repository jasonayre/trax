angular.module('admin.controllers.entries').controller('EntriesListController',
  ["$scope", "Entry", function($scope, Entry) {

    $scope.fetchCollection = function () {
      console.log('fetching collection');
      // if channel present
      if($scope.resource) {
        $scope.resource.entries().then(function(result){

          console.log(result);
          console.log(result[0].resource_name);
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
      // resource = $scope.collection[index];

      target = $scope.collection[index];

      console.log('target is', target);


      target.remove().then(function (result){
        $scope.collection.splice(index, 1);
      });
    };

  }]
);