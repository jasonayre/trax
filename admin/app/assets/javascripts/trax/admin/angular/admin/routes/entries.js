angular.module('admin').config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
  $stateProvider.state('entries', {
    abstract: true,
    url: "/entries",
    template: "<ui-view/>"
  });
    
  $stateProvider.state("entries.list", {
    url: "/index",
    templateUrl: "/assets/templates/admin/entries/list.html",
    controller: "EntriesListController"
  });

  $stateProvider.state('entries.resource', {
    abstract: true,
    url: '/{id}',
    template: '<ui-view/>',
    resolve: {
      resource: function($stateParams, Entry) {
        if($stateParams.id) {
          return Entry.get({id: $stateParams.id}).then(function (result) {
            return result;
          });
        } else {
          return new Entry();
        }
      }
    },
    controller: function($scope, resource, $state) {
      $scope.resource = resource;
    }
  });

  $stateProvider.state('entries.resource.show', {
    url: '/show',
    templateUrl: "/assets/templates/admin/entries/show.html",
    controller: "EntriesShowController"
  });

  $stateProvider.state('entries.resource.edit', {
    url: '/edit',
    templateUrl: "/assets/templates/admin/entries/form.html.erb",
    controller: "EntriesFormController"
  });

  $stateProvider.state('entries.resource.new', {
    url: '/new',
    templateUrl: "/assets/templates/admin/entries/form.html",
    controller: "EntriesFormController"
  });

  $urlRouterProvider.otherwise('/');
}]);
