(function() {
  "use strict";

  angular.module("app").controller("booksCtrl", function($scope, $http){

    $http.get("/api/v1/books.json").then(function (response) {
      $scope.books = response.data;
    });

    $scope.addBook = function(title, author, year_published, reading_status) {
      var newBook = { title: title, author: author}
      $http.post('/api/v1/books.json', {book: newBook}).then(function(response) {
        $scope.books.push(newBook);
        $scope.newBookTitle = null;
        $scope.newBookAuthor = null;
      }, function (error) {
        $scope.errors = error.data.errors;
      });

    };

    $scope.changeOrder = function(attribute) {
      $scope.orderAttribute = attribute;
      $scope.sortDirection = !$scope.sortDirection;
    };
    window.scope = $scope;

  });
}());