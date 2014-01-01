angular.module('admin.controllers.channels').controller('ChannelsFormController',
  ["$scope", "Channel", "$stateParams", "resource", "Tag", "Protos", function($scope, Channel, $stateParams, resource, Tag, Protos) {
    $scope.trax = Protos;
    
    $scope.testing = "blah";
    
    tag = Tag;
    
    channel_scope = $scope;
    
    $scope.resource = resource;
    
    $scope.tag_list = [];
    
    $scope.tagParams = function() {
      return {
        resourceType: "channels",
        taggableId: $scope.resource.id
      };
    };
    
    $scope.fetchTagList = function() {
      Tag.query({taggable_context: "tags"}, $scope.tagParams()).then(function(results) {
        $scope.tags = results;
        
        console.log(results);
        _.each(results, function(tag) {
          console.log(tag);
          $scope.tag_list.push(tag.name);
        });
      });
    };
    
    $scope.fetchTagList();
    
    $scope.tagAdded = function($tag) {
      var tag_params, resource_params;
      tag_params = _.merge($scope.tagParams(), {name: $tag, taggable_context: "tags"});
      
      new Tag(tag_params).create().then(function(result) {
        console.log(result);
        console.log($tag);
        console.log('TAG WAS ADDED');
      });
    };
    
    $scope.tagRemoved = function($tag) {
      var target_tag;
      console.log($tag);
      console.log('tag was removed');
      
      console.log($scope.tags);
      
      target_tag = _.find($scope.tags, {name: $tag});
      
      console.log(target_tag, 'target_tag');
      
      target_tag.remove().then(function(result){
        console.log('was removed', result);
      });
    };

    $scope.$watch('tags', function(newValue, oldValue) {
      console.log(newValue);
      console.log(oldValue);
    });

    $scope.save = function() {
      $scope.$root.primary_view_loading = true;
      console.log($scope.resource);
      $scope.resource.save().then(function (result) {
        $scope.resource = result;
        console.log('result waas', result);
        $scope.$root.primary_view_loading = false;
      });
    };
    
  }]
);