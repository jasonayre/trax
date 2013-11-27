angular.module("admin").config(['$stateProvider', '$urlRouterProvider', 'ADMIN_TEMPLATES', function($stateProvider, $urlRouterProvider, ADMIN_TEMPLATES) {
  console.log('adminchanelsrouterinit');
  console.log($stateProvider);
  
  $stateProvider.state('channels', {
    url: '/channels',
    templateUrl: "/assets/templates/admin/channels/index.html",
    controller: "ChannelsIndexController"
  });
  
  $stateProvider.state('channels.edit', {
    url: '/{id}/edit',
    templateUrl: "/assets/templates/admin/channels/form.html",
    controller: "ChannelsFormController",
    onEnter: function(){
      console.log('I AM ENTERING');
    }
  });
  
  $stateProvider.state('channels.new', {
    url: '/new',
    templateUrl: "/assets/templates/admin/channels/form.html",
    controller: "ChannelsFormController"
  });


  $stateProvider.state('channels.show', {
    url: '/{id}',
    templateUrl: "/assets/templates/admin/channels/show.html",
    controller: "ChannelsShowController"
  });
  
  
  $urlRouterProvider.otherwise('/channels');
}]);
