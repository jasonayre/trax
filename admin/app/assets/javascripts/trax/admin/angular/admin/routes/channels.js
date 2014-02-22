angular.module('admin').config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
  console.log($stateProvider);

  $stateProvider.state('channels', {
    url: '/channels',
    templateUrl: "/assets/templates/admin/channels/index.html",
    controller: "ChannelsIndexController"
  });

  $stateProvider.state('channels.resource', {
    abstract: true,
    url: '/{id}',
    template: '<ui-view/>',
    resolve: {
      resource: function($stateParams, Channel) {
        if($stateParams.id) {
          return Channel.get({id: $stateParams.id}).then(function (result) {
            return result;
          });
        } else {
          return new Channel();
        }
      }
    },
    controller: function($scope, resource) {
      $scope.resource = resource;
      console.log('resource is', $scope.resource);
    }
  });

  $stateProvider.state('channels.resource.show', {
    url: '/show',
    templateUrl: "/assets/templates/admin/channels/show.html",
    controller: "ChannelsShowController",
    onEnter: function() {
      console.log('I AM ENTERING SHOW');
    }
  });

  $stateProvider.state('channels.resource.edit', {
    url: '/edit',
    templateUrl: "/assets/templates/admin/channels/form.html",
    controller: "ChannelsFormController",
    onEnter: function() {
      console.log('I AM ENTERING FORM');
    }
  });

  $stateProvider.state('channels.resource.new', {
    url: '/new',
    templateUrl: "/assets/templates/admin/channels/form.html",
    controller: "ChannelsFormController"
  });

  $urlRouterProvider.otherwise('/channels');
}]);
