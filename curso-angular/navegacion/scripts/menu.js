navegacion.controller('Menu', function($scope, $location){
	
	$scope.isActive = function(route){
		return route === $location.path();
	}

});