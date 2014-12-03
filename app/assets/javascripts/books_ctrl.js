(function() {
  "use strict";

  angular.module("app").controller("booksCtrl", function($scope, $http){

    $http.get("/api/v1/books.json").then(function (response) {
      $scope.books = response.data;
    });

    $scope.addBook = function(title, author, year_published, reading_status) {
      var newBook = { title: title, author: author}
      $http.post('/api/v1/books.json', {book: newBook}).then(function(response) {

      }, function (error) {
        $scope.error = error.statusText;
      });

      $scope.books.push(newBook);
      $scope.newBookTitle = null;
      $scope.newBookAuthor = null;
    };
    

  });
}());