angular.module('admin.controllers.channels').controller('ChannelsFormController',
  ["$scope", "Channel", "$stateParams", "resource", "Tag", "Protos", function($scope, Channel, $stateParams, resource, Tag, Protos) {
    $scope.trax = Protos;
    
    $scope.resource = resource;

    $scope.tagParams = function() {
      return {
        resourceType: "channels",
        taggableId: $scope.resource.id
      };
    };
    
    $scope.fetchTags = function() {
      Tag.query({taggable_context: "tags"}, $scope.tagParams()).then(function(results) {
        _.each(results, function(tag) {
          $scope.tags.push(tag);
        });
      });
    };
    
    $scope.fetchTags();
    
    $scope.tagAdded = function($tag) {
      var tag_params, tag;
      tag_params = _.merge($scope.tagParams(), {name: $tag, taggable_context: "tags"});
      
      tag = new Tag(tag_params);
      $scope.tags.push(tag);
    };
    
    $scope.tagRemoved = function($tag) {
      if(!$tag.isNew()) {
        $tag.remove().then(function(result){
          console.log('tag_removed', result);
        });
      }  
    };
    
    $scope.save = function() {
      $scope.$root.primary_view_loading = true;
      $scope.$root.app_is_syncing = true;
      $scope.$root.syncing_status_message = "Saving Resource";
      console.log($scope.resource);
      $scope.resource.save().then(function (result) {
        $scope.resource = result;
        console.log('result waas', result);
        
        $scope.saveTags();
        $scope.$root.primary_view_loading = false;
        $scope.$root.app_is_syncing = false;
      });
    };
    
    $scope.dirtyTags = function() {
      return _.reject($scope.tags, function(tag){
        return !tag.isNew();
      });
    };
    
    $scope.saveTags = function() {
      $scope.$root.syncing_status_message = "Saving Tags";
      
      if($scope.dirtyTags()) {
        console.log('had dirty tags');
        _.map($scope.dirtyTags(), function(tag){
          console.log(tag);
          
          tag.create().then(function(result){
            console.log(result);
          });
        });
      }
    };
  }]
);