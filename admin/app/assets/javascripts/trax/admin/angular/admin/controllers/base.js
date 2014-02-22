angular.module('admin.controllers').controller('BaseController', ["$scope", function($scope, $rootScope) {
  console.log($scope);
  console.log('base controller');

  console.log($rootScope);
}]);