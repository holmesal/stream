'use strict';

angular.module('streamApp')
  .service 'Stream', ($resource, $rootScope) ->
    
    $resource "#{$rootScope.api_url}/stream/:streamId",
    	streamId: '@streamId'
    	postId: '@postId'
