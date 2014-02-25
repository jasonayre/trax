angular.module("admin").config(["$stateProvider", "$urlRouterProvider", function($stateProvider, $urlRouterProvider) {
  console.log($stateProvider);

  $stateProvider.state("channels", {
    abstract: true,
    url: "/channels",
    template: "<ui-view/>"
  });

  $stateProvider.state("channels.list", {
    url: "/index",
    templateUrl: "/assets/templates/admin/channels/list.html",
    controller: "ChannelsListController",
    onEnter: function() {
      console.log("I AM ENTERING CILEC");
    }
  });

  $stateProvider.state("channels.resource", {
    abstract: true,
    url: "/{channel_id}",
    template: "<ui-view/>",
    resolve: {
      channel: function($stateParams, Channel) {
        if($stateParams.channel_id) {
          return Channel.get({id: $stateParams.channel_id}).then(function (result) {
            return result;
          });
        } else {
          return new Channel();
        }
      }
    },
    controller: function($scope, channel, $state) {
      $scope.resource = channel;
      console.log("channel is", $scope.resource);
    }
  });

  $stateProvider.state("channels.resource.show", {
    url: "/show",
    templateUrl: "/assets/templates/admin/channels/show.html",
    controller: "ChannelsShowController",
    onEnter: function() {
      console.log("I AM ENTERING SHOW");
    }
  });

  $stateProvider.state("channels.resource.edit", {
    url: "/edit",
    templateUrl: "/assets/templates/admin/channels/form.html",
    controller: "ChannelsFormController",
    onEnter: function() {
      console.log("I AM ENTERING FORM");
    }
  });

  $stateProvider.state("channels.resource.entries", {
    abstract: true,
    url: "/entries",
    template: "<ui-view/>"
  });

  $stateProvider.state("channels.resource.entries.list", {
    url: "/index",
    templateUrl: "/assets/templates/admin/entries/list.html",
    controller: "EntriesListController"
  });

  $stateProvider.state('channels.resource.entries.resource', {
    abstract: true,
    url: '/{entry_id}',
    template: '<ui-view/>',
    resolve: {
      entry: function($stateParams, Entry) {
        if($stateParams.entry_id) {
          return Entry.get({channel_id: $stateParams.channel_id, id: $stateParams.entry_id}).then(function (result) {
            console.log('result was');
            return result;
          });
        } else {
          return new Entry({channel_id: $stateParams.channel_id});
        }
      }
    },
    controller: function($scope, channel, entry, $state) {
      $scope.resource = entry;
      $scope.channel = channel;
    }
  });

  // $stateProvider.state('entries.resource.show', {
  //   url: '/show',
  //   templateUrl: "/assets/templates/admin/entries/show.html",
  //   controller: "EntriesShowController"
  // });
  //
  $stateProvider.state('channels.resource.entries.resource.edit', {
    url: '/edit',
    templateUrl: "/assets/templates/admin/entries/form.html.erb",
    controller: "EntriesFormController"
  });

  $stateProvider.state('channels.resource.entries.resource.new', {
    url: '/new',
    templateUrl: "/assets/templates/admin/entries/form.html.erb",
    controller: "EntriesFormController"
  });

  $stateProvider.state('channels.resource.entries.resource.show', {
    url: '/show',
    templateUrl: "/assets/templates/admin/entries/show.html.erb",
    controller: "EntriesShowController"
  });
  //
  // $stateProvider.state('entries.resource.new', {
  //   url: '/new',
  //   templateUrl: "/assets/templates/admin/entries/form.html",
  //   controller: "EntriesFormController"
  // });
  //
  // $stateProvider.state("channels.resource.new", {
  //   url: "/new",
  //   templateUrl: "/assets/templates/admin/channels/form.html",
  //   controller: "ChannelsFormController"
  // });
  //
  // $stateProvider.state("channels.resource.entries", {
  //   url: "/entries",
  //   templateUrl: "/assets/templates/admin/entries/index.html",
  //   controller: "EntriesIndexController"
  // });

  // $stateProvider.state("channels.resource.entries.", {
  //   url: "/entries",
  //   templateUrl: "/assets/templates/admin/entries/index.html",
  //   controller: "EntriesIndexController"
  // });


  $urlRouterProvider.otherwise("/channels");
}]);
