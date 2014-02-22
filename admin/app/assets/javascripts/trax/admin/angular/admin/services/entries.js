angular.module('admin.services').factory("Entry", ["railsResourceFactory", function(railsResourceFactory) {
    var resource;

    resource = railsResourceFactory({url: "/admin/entries", name: "entry"});

    return resource;
  }
]);