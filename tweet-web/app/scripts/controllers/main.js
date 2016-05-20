'use strict';

/**
 * @ngdoc function
 * @name tweetWebApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the tweetWebApp
 */
(function () {
    'use strict';
 
    angular.module( 'tweetWebApp' ).controller( 'MainCtrl' , [ '$scope', '$http', 'ENV' , function ( $scope, $http, ENV ) {

    	$scope.searchTopics = function() {
    		$http( { method: 'GET', url: ENV.apiEndpoint + '/tweets/topics' }).then(function successCallback(response) {
	    		$scope.topics = response.data.topics;
			}, function errorCallback(response) {
			    alert( 'Something went wrong when getting the topics!' );
			    console.log( response );
			});
    	}

    	$scope.searchTopics();

    }]);
 
}());