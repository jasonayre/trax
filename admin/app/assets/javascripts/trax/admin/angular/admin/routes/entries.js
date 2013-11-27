angular.module("admin").config(['$stateProvider', '$urlRouterProvider', 'ADMIN_TEMPLATES', function($stateProvider, $urlRouterProvider, ADMIN_TEMPLATES) {
  console.log('adminentriesrouterinit');
  console.log($stateProvider);
  
  $stateProvider.state('entries', {
    url: '/entries',
    templateUrl: "/assets/templates/admin/entries/index.html",
    controller: "EntriesIndexController"
  });
  
  $stateProvider.state('entries.edit', {
    url: '/{id}/edit',
    templateUrl: "/assets/templates/admin/entries/form.html",
    controller: "EntriesFormController",
    onEnter: function(){
      console.log('I AM ENTERING');
    }
  });
  
  $stateProvider.state('entries.new', {
    url: '/new',
    templateUrl: "/assets/templates/admin/entries/form.html",
    controller: "EntriesFormController"
  });


  $stateProvider.state('entries.show', {
    url: '/{id}',
    templateUrl: "/assets/templates/admin/entries/show.html",
    controller: "EntriesShowController"
  });
}]);
