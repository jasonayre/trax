angular.module('admin.channels.services').factory("Channel", ["railsResourceFactory", function(railsResourceFactory) {
    var resource;
    
    resource = railsResourceFactory({url: "/admin/channels", name: "channel"});
    
    return resource;
  }
]);