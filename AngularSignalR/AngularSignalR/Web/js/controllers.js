'use strict';

/* Controllers */

var appControllers = angular.module('appControllers', []);

appControllers.controller('ProductListCtrl', ['$scope', 'productService',
  function ($scope, productService) {
      $scope.products = productService.list();

      $scope.orderProp = 'Name';

      $scope.addLike = function (product) {
          product.Likes++;
          productService.update(product);
      };

      $scope.delete = function (product) {
          productService.remove({ Id: product.Id }, function (success) {
              if (success)
                  $scope.products.splice($scope.products.indexOf(product), 1);
          });
      };

  }]);

appControllers.controller('ProductCtrl', ['$scope', '$routeParams', 'productService', '$location',
  function ($scope, $routeParams, productService, $location) {
      $scope.product = productService.select({ Id: $routeParams.Id });
      
      $scope.setImage = function (imageUrl) {
          $scope.mainImageUrl = imageUrl;
      };

      $scope.cancel = function () {
          $scope.close();
      };

      $scope.save = function () {
          
          if ($scope.product.ImageUrl == undefined || $scope.product.ImageUrl == '')
              $scope.product.ImageUrl = flickr.getImage($scope.product.Name, 'Animal');

          if ($scope.product.Id == undefined || $scope.product.Id == 0) {
              productService.add($scope.product, function (success) {

                  $scope.close();
              });
          }
          else {
              productService.update($scope.product, function (success) {
                  $scope.close();
              });
          }
      };
      
      $scope.isSaveDisabled = function () {
          return $scope.ProductForm.$invalid || angular.equals($scope.product, $scope.form);
      };

      $scope.close = function () {
          $location.path('/products');
      };
  }]);
