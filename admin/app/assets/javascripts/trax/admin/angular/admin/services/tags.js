angular.module('admin.services').factory("Tag", ["railsResourceFactory", "railsSerializer", function(railsResourceFactory, railsSerializer) {
    var resource;
    
    resource = railsResourceFactory({
      url: "/admin/{{resourceType}}/{{taggableId}}/tags/{{id}}",
      name: "tag"
    });
    
    return resource;
  }
]);