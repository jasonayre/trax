angular.module('admin.controllers.channels').controller('ChannelsFormController',
  ["$scope", "Channel", "$stateParams", "resource", "Protos", function($scope, Channel, $stateParams, resource, Protos) {
    $scope.trax = Protos;
    // $scope.proto = Protos.fetch("trax.core.channel");
    // console.log($scope.proto);

    console.log('form controller init', resource);
    
    $scope.resource = resource;
    
    
    // $scope.fetchResource = function () {
    //   console.log('fetching collection');
    //   $scope.resource_is_loading = true;
    //   Channel.get({id: $stateParams.id}).then(function (result) {
    //     console.log(result);
    //     $scope.resource = result;
    //     $scope.resource_is_loading = false;
    //   });
    // };
    // 
    // if($stateParams.id) {
    //   $scope.fetchResource();
    // } else {
    //   $scope.resource = {};
    //   $scope.resource = new Channel({name: "Channel Name"});
    //   $scope.resource_is_loading = false;
    // };

    $scope.save = function() {
      console.log('called save');
      console.log($scope.resource);
      
      console.log('save called');
      
      $scope.resource_is_loading = true;
      
      console.log($scope.resource);
      
      // if($scope.resource.hasOwnPropery("id")) {
      //   
      // }
      
      $scope.resource.save().then(function (result) {
        console.log(result);
        $scope.resource = result;
        console.log('result waas', result);
        $scope.resource_is_loading = false;
      });
      
      // $scope.resource.save({$})
    };
    
    
    
    
  }]
);