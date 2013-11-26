angular.module('admin.channels.controllers').controller('ChannelsIndexController',
  ["$scope", "Channel", "$routeParams", "$location", "Templates", function($scope, Channel, $routeParams, $location, Templates) {
    Templates.fetch('channels');

    $scope.heading = "I AM CHANNELS INDEX CONTROLLER";
    
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
      Channel.get({id: resource.id}).then(function (result){
        console.log(result);
      });
      // resource.get().then(function (result) {
      //   console.log('result is ', result);
      // });
    };
    
    $scope.pop = function() {
      resource = $scope.collection.pop();
      resource.delete().then(function(result){
        console.log(result);
      });
    }
    
    $scope.doSomething = function() {

      return 'blah';
    };
    
    $scope.destroy = function(index) {
      resource = $scope.collection[index];

      resource.remove().then(function (result){
        $scope.collection.splice(index, 1);
        console.log(result);
      });
    };
    
  }]
);