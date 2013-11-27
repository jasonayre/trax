console.log('indexcontrolerequired');

angular.module('admin.controllers.channels').controller('ChannelsIndexController',
  ["$scope", "Channel", "$routeParams", "$location", "Templates", function($scope, Channel, $routeParams, $location, Templates) {
    console.log('channels index controller');
    Templates.fetch('channels');
    
    $scope.active_controller_config = {
      has_header: false
    };
    
    $scope.has_header = false;
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
      Channel.get({id: resource.id}).then(function (result){
        console.log(result);
      });
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