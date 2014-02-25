angular.module('admin.services').factory("Entry", ["railsResourceFactory", function(railsResourceFactory) {
    var resource;

    resource = railsResourceFactory({
      url: "/admin/channels/{{channel_id}}/entries/{{id}}",
      name: "entry"
    });

    return resource;
  }
]);