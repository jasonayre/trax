angular.module('admin.controllers.channels').controller('ChannelsFormController',
  ["$scope", "Channel", "$stateParams", "Tag", "Protos", "growl", function($scope, Channel, $stateParams, Tag, Protos, growl) {
    $scope.trax = Protos;

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
      };
    };
    
    $scope.save = function() {
      $scope.$root.primary_view_loading = true;
      
      $scope.resource.save().then(function (result) {
        $scope.resource = result;
        
        console.log(result);

        $scope.saveTags();
        $scope.$root.primary_view_loading = false;
      }, function(failure){
        console.log(failure);
        $scope.$root.primary_view_loading = false;
      });
    };
    
    $scope.dirtyTags = function() {
      return _.reject($scope.tags, function(tag) {
        return !tag.isNew();
      });
    };
    
    $scope.saveTags = function() {
      if($scope.dirtyTags().length > 0) {
        console.log('had dirty tags');
        console.log($scope.dirtyTags());
        _.map($scope.dirtyTags(), function(tag){
          
          tag.create().then(function(result){
            console.log(result);
          });
        });
      }
    };
  }]
);