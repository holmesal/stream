'use strict';

angular.module('streamApp')
  .directive('post', (Post) ->
    templateUrl: 'views/partials/post.html'
    restrict: 'E'
    scope:
    	post: '='
    link: (scope, element, attrs) ->
      # element.text 'this is the post directive'

      # scope.post.ago = '12 minutes ago'
      console.log scope.post
  )
