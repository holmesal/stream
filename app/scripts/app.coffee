'use strict'

angular.module('streamApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'angularMoment'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/:user',
        templateUrl: 'views/user.html',
        controller: 'UserCtrl'
      .when '/:user/:stream',
        templateUrl: 'views/stream.html',
        controller: 'StreamCtrl'
      .otherwise
        redirectTo: '/'

  .run ($rootScope) ->

    # Set root api url
    # $rootScope.api_url = 'http://localhost:3000'
    $rootScope.api_url = 'http://ec2-54-234-39-67.compute-1.amazonaws.com'
