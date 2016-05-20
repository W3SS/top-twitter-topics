'use strict';

/**
 * @ngdoc function
 * @name tweetWebApp.controller:TopicCtrl
 * @description
 * # TopicCtrl
 * Controller of the tweetWebApp
 */
(function () {
    'use strict';
 
    angular.module( 'tweetWebApp' ).controller( 'TopicCtrl' , [ '$scope', '$http', '$routeParams', 'ENV', function ( $scope, $http, $routeParams, ENV ) {

    	$scope.hashtag = $routeParams.name;

    	$scope.searchTweets = function() {
    		$http( { method: 'GET', url: ENV.apiEndpoint + '/tweets/topics/' + $scope.hashtag }).then(function successCallback(response) {
	    		$scope.tweets = response.data.tweets;
	    		console.log( $scope.tweets );
			}, function errorCallback(response) {
			    alert( 'Something went wrong when searching for tweets!' );
			    console.log( response );
			});
    	};

    	$scope.searchTweets();
    	
    }]);
 
}());