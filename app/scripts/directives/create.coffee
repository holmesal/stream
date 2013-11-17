'use strict';

angular.module('streamApp')
  .directive('create', ($location, Post) ->
    templateUrl: 'views/partials/create.html'
    restrict: 'E'
    scope:
    	post: "&addPost"
    	stream: "="
    link: (scope, element, attrs) ->

    	# Post resource

    	console.log scope.stream


    	scope.makePost = ->
    		# Create the post, setting the current date
    		post = 
    			timestamp: Date.now()
    			content: scope.content

    		# Send the post out to the server
    		# Post = $resource "#{$rootScope.api_url}/stream/:streamId/post/:postId",
    		# 	streamId: "@streamId"
    		Post.save
    			streamId: 1234,
    			data: post

    		, () ->
    			# Send the post up to the stream controller
    			scope.post({post:post})

    			# Clear out the text area
    			scope.content = ''
  )
