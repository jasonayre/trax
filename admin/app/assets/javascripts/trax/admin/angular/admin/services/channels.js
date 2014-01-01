angular.module('admin.services').factory("Channel", ["railsResourceFactory", "railsSerializer", function(railsResourceFactory, railsSerializer) {
    var resource;
    
    resource = railsResourceFactory({
      url: "/admin/channels", 
      name: "channel"
      // serializer: railsSerializer(function () {
      //   this.resource('tags', 'Tag');
      // })
    });
    
    return resource;
  }
]);