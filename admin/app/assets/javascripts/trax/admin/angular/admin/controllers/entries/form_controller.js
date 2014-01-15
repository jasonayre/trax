angular.module('admin.controllers.entries').controller('EntriesFormController',
  ["$scope", "$stateParams", "resource", "Tag", "Channel", function($scope, $stateParams, resource, Tag, Channel) {
    console.log($scope.resource);
    $scope.resource = resource;
    
    resource = resource;
    
    $scope.fetchChannels = function(){
      Channel.query().then(function (results) {
        $scope.channels = results;
      });
    };
    
    $scope.fetchChannels();
    
    // $scope.fieldOptions = function(){
    //   routing_strategies = {};
    //   routing
    // };
    
    $scope.field_options = {
      routing_strategies: {
        'restful': 'RESTFUL',
        'static': 'STATIC'
      }
    };
    
    $scope.dirtyTags = function() {
      _.find($scope.tags, function(tag){
        return tag.isNew();
      });
    };
    
    $scope.tagParams = function() {
      return {
        resourceType: "entries",
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
      var tag_params, resource_params, tag;
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
      
      $scope.resource.save().then(function (result) {
        $scope.resource = result;
        console.log('result waas', result);
        
        $scope.saveTags();
        $scope.$root.primary_view_loading = false;
        $scope.$root.app_is_syncing = false;
      });
    };
    
    $scope.saveTags = function() {
      $scope.$root.syncing_status_message = "Saving Tags";
      
      _.map($scope.dirtyTags(), function(tag){
        tag.create().then(function(result){
          console.log(result);
        });
      });
    };
    
  }]
);