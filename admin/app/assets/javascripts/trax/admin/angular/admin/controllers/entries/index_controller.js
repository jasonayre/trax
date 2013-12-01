angular.module('admin.controllers.entries').controller('EntriesIndexController',
  ["$scope", "Entry", "Templates", "$stateParams", function($scope, Entry, Templates, $stateParams) {
    
    $scope.fetchCollection = function () {
      console.log('fetching collection');
      Entry.query().then(function (result) {
        $scope.collection = result;
      });
    };
    
    $scope.fetchCollection();
    
    $scope.destroy = function(index) {
      resource = $scope.collection[index];

      resource.remove().then(function (result){
        $scope.collection.splice(index, 1);
      });
    };
    
  }]
);