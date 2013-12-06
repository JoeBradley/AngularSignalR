'use strict';

/* Services */

var appServices = angular.module('appServices', ['ngResource']);

appServices.factory('productService', ['$resource',
  function ($resource) {
      return $resource('api/v1/products/:Id', {}, {
          list: { method: 'GET', isArray: true },
          select: { method: 'GET', params: { Id: '' } },
          add: { method: 'POST' },
          update: { method: 'PUT', params: { Id: 'Id' } },
          remove: { method: 'DELETE', params: { Id: 'Id' } }
      });
  }]);