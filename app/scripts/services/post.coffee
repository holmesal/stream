'use strict';

angular.module('streamApp')
  .service 'Post', ($resource, $rootScope) ->

    $resource "#{$rootScope.api_url}/stream/:streamId/post/:postId",
    	streamId: '@streamId'
    	postId: '@postId'
