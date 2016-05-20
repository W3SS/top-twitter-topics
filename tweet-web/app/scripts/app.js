'use strict';

/**
 * @ngdoc overview
 * @name tweetWebApp
 * @description
 * # tweetWebApp
 *
 * Main module of the application.
 */
angular
  .module('tweetWebApp', [
    'ngAria',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'config'
  ])
  .config(function ( $routeProvider ) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main'
      })
      .when('/topic/:name', {
        templateUrl: 'views/topic.html',
        controller: 'TopicCtrl',
        controllerAs: 'topic'
      })
      .otherwise({
        redirectTo: '/'
      });
  });