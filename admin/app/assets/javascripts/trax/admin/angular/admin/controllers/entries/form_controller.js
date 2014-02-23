angular.module('admin.controllers.entries').controller('EntriesFormController',
  ["$scope", "$stateParams", "Tag", "growl", function($scope, $stateParams, Tag, growl) {

    $scope.field_options = {
      routing_strategies: {
        'RESTFUL': 'RESTFUL',
        'STATIC': 'STATIC'
      }
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
    
    if(!$scope.resource.isNew()) {
      $scope.fetchTags();
    };

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
      
      $scope.resource.save().then(function (result) {
        $scope.resource = result;
        
        growl.addSuccessMessage("Entry Saved Successfully");

        $scope.saveTags();
        $scope.$root.primary_view_loading = false;
      }, function(error){
        growl.addErrorMessage(error);
      });
    };
    
    $scope.dirtyTags = function() {
      return _.reject($scope.tags, function(tag){
        return !tag.isNew();
      });
    };
    
    $scope.saveTags = function() {
      if($scope.dirtyTags()) {
        console.log('had dirty tags');
        _.map($scope.dirtyTags(), function(tag){
          
          tag.create().then(function(result){
            growl.addSuccessMessage('Tag saved successfully');
            console.log(result);
          });
        });
      }
    };

  }]
);