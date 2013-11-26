angular.module('admin.channels.controllers').controller('ChannelsIndexController',
  ["$scope", "Channel", "$routeParams", "$location", "Templates", function($scope, Channel, $routeParams, $location, Templates) {
    Templates.fetch('channels');
    
    $scope.header = {title: "Channels", description: "The primary taxonomy"};
    
    $scope.fetchCollection = function () {
      $scope.collection_is_loading = true;
      Channel.query().then(function (result) {
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
        // $scope.collection.slice(index, 1);
        // result.remove();
        console.log(result);
        // console.log($scope.collection);
        // console.log(result);
        // $scope.collection.remove(result);
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