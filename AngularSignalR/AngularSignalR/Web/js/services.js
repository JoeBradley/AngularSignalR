'use strict';

/* Services */
//Using SignalR, see: http://dotnet.dzone.com/articles/better-way-using-aspnet

var appServices = angular.module('appServices', ['ngResource']);

appServices.factory('logService', [
    function () {

        var log = function (msg) {
            console.log(msg);
        };

        return {
            log: log
        };
    }
]);

appServices.factory('hubService', ['$rootScope',
    function ($rootScope) {
        var proxy = null;
        var self = this;

        var initialize = function () {

            var that = self;
            console.log('init hubService');

            // Declare a proxy to reference the hub. Defined in StoreHub.cs
            that.proxy = $.connection.storeHub;

            //$.connection.hub.start().done(function () {
            //    console.log('hub proxy connected');

            //    self.proxy.on('addProduct', function (product) {
            //        console.log('hubService.on.addProduct');
            //        $rootScope.$emit('addProduct', product);
            //    });
            //});

            // need to wrap this in .done( function() , but trouble with reference to this, see for help:
            // http://javascript.crockford.com/private.html

            $.connection.hub.start();
            self.proxy.on('addProduct', function (product) {
                console.log('hubService.on.addProduct');
                $rootScope.$emit('addProduct', product);
            });
            self.proxy.on('ping', function (datetime) {
                console.log('hubService.on.ping');
                $rootScope.$emit('ping', datetime);
            });



            ////Getting the connection object
            //connection = $.hubConnection();

            ////Creating proxy
            //this.proxy = connection.createHubProxy('storeHub');

            ////Starting connection
            //connection.start();

            ////Publishing an event when server pushes a new product
            //this.proxy.on('addProduct', function (product) {
            //    $rootScope.$emit('addProduct', product);
            //});
        };

        var ping = function () {
            //Invoking greetAll method defined in hub
            self.proxy.invoke('ping');
        };

        return {
            initialize: initialize,
            ping: ping
        };
    }
]);

appServices.factory('productService', ['$resource',
    function ($resource) {
        return $resource('api/v1/products/:Id', {}, {
            list: { method: 'GET', isArray: true },
            select: { method: 'GET', params: { Id: '' } },
            add: { method: 'POST' },
            update: { method: 'PUT', params: { Id: 'Id' } },
            remove: { method: 'DELETE', params: { Id: 'Id' } }
        });
    }
]);

