

var app = angular.module('myApp', []);
app.controller('productCtrl', function($scope, $http) {
  $http.get("/homeshop/product/all").then(function (response) {
      $scope.myData = response.data;
      
  });
    $scope.orderByMe = function(x) {
        $scope.myOrderBy = x;
    }
});