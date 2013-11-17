'use strict'

angular.module('streamApp')
  .controller 'StreamCtrl', ($scope, Stream) ->

  	# Grab the posts from the backend
  	Stream.get
  		streamId: 1234
  	, (data, success, error) ->
  		$scope.stream = data

    # $scope.stream = 
    # 	id: 1234
    # 	name: 'The stream meta-stream'
    # 	slug: 'meta-stream'
    # 	posts: [
    # 		{
    # 			content: 'I want someplace to microblog while I work, so I can record things without going off on tangents, and come back to them later. 9:10PM on Nov 16'
    # 			timestamp: Date.now()
    # 		}
    # 		{
    # 			content: 'I also want a record of all of the problems I faced and the decisions I made.'
    # 			timestamp: Date.now()
    # 		}
    # 	]

    $scope.addPost = (post) ->
    	$scope.stream.posts.unshift post
