'use strict';

angular.module('clientApp')
  .service('Item', ['$resource', function Item($resource) {
    return $resource('/api/v1/items/:id');
  }]);
