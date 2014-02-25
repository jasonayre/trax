angular.module('admin.services').factory("Channel", ["railsResourceFactory", "railsSerializer", '$http', "Entry", function(railsResourceFactory, railsSerializer, $http, Entry) {
    var resource;

    resource = railsResourceFactory({
      url: "/admin/channels",
      name: "channel",
      serializer: railsSerializer(function () {
        // this.nestedAttribute('author');
        // this.nestedResource('entries', 'Entry');
        this.resource('entries', 'Entry');
      })
    });

    resource.prototype.entries = function () {
      return Entry.query(null, {channel_id: this.id});
    };

    // resource.prototype.getEntries = function () {
    //     var self = this;
    //     return resource.$get(self.$url('entries')).then(function (entries) {
    //         self.entries = entries;
    //         return self.entries;
    //     });
    // };

    // resource.prototype.entries = function() {
    //   return Entry.query({channel_id: this.id});
    //
    //   resource.prototype.getReferences = function () {
    //       var self = this;
    //       return resource.$get(self.$url('references'))).then(function (references) {
    //           self.references = references;
    //           return self.references;
    //       });
    // }

    // resource.prototype.entries = function() {
    //   // Entry.get({channel_id: })
    //   return resource.get(this.id + "/entries");
    // };

    return resource;
  }
]);