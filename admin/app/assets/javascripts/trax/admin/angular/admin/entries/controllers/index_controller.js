angular.module('admin.entries.controllers').controller('EntriesIndexController',
  ["$scope", "Entry", "$routeParams", "$location", "Templates", function($scope, Entry, $routeParams, $location, Templates) {
    Templates.fetch('entries');
    $scope.heading = "I AM Entry Index CONTROLLER";
    
    $scope.fetchCollection = function () {
      $scope.collection_is_loading = true;
      
      Entry.query().then(function (result) {
        $scope.collection = result;
        $scope.collection_is_loading = false;
      });
    };
    
    $scope.fetchCollection();
    
    $scope.show = function (resource) {
      console.log(resource);
      
      resource.get().then(function (result) {
        console.log('result is ', result);
      });
    };
    
    $scope.delete = function(resource, index) {
      console.log(resource);
      resource.remove().then(function (result){
        $scope.collection.pop();
        console.log(result);
      });
    };
    
    $scope.doSomething = function() {
      console.log('doing something');
      return "blah";
    };
    
    $scope.pop = function() {
      console.log('pop');
      resource = $scope.collection.pop();
      resource.remove().then(function (result){
        console.log(result, 'was destroyed');
      });
    };
  }]
);