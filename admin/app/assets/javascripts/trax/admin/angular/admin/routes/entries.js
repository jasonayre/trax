angular.module('admin').config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
  $stateProvider.state('entries', {
    url: '/entries',
    templateUrl: "/assets/templates/admin/entries/index.html",
    controller: "EntriesIndexController"
  });

  $stateProvider.state('entries.resource', {
    abstract: true,
    url: '/{id}',
    template: '<ui-view/>',
    templateUrl: "/assets/templates/admin/entries/resource.html",
    resolve: {
      resource: function($stateParams, Entry) {
        if($stateParams.id) {

          return Entry.get({id: $stateParams.id}).then(function (result) {
            // console.log(result);
            // console.log(Entry);
            return result;
          });
        } else {
          return new Entry();
        }
      }
    }
  });

  $stateProvider.state('entries.resource.show', {
    url: '/show',
    templateUrl: "/assets/templates/admin/entries/show.html",
    controller: "EntriesShowController"
  });

  $stateProvider.state('entries.resource.edit', {
    url: '/edit',
    templateUrl: "/assets/templates/admin/entries/form.html",
    controller: "EntriesFormController"
  });

  $stateProvider.state('entries.resource.new', {
    url: '/new',
    templateUrl: "/assets/templates/admin/entries/form.html",
    controller: "EntriesFormController"
  });

  $urlRouterProvider.otherwise('/entries');
}]);
