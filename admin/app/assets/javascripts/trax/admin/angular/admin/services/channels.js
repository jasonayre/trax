angular.module('admin.services').factory("Channel", ["railsResourceFactory", function(railsResourceFactory) {
    var resource;

    resource = railsResourceFactory({
      url: "/admin/channels",
      name: "channel"
    });
    
    resource.prototype.entries = function() {
      return resource.get(this.id + "/entries");
    };

    return resource;
  }
]);