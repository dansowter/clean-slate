'use strict';

angular.module('clientApp')
  .controller('MainCtrl', function ($scope, Item) {
    $scope.items = Item.query();

    $scope.newItem = new Item();

    $scope.addItem = function addItem () {
      $scope.newItem.$save().then(function () {
        $scope.items.push($scope.newItem);
        $scope.newItem = new Item();
      });
    };

    $scope.remove = function remove (index) {
      Item.remove({id: $scope.items[index].id}, function () {
        $scope.items.splice(index, 1);
      });
    };
  });
