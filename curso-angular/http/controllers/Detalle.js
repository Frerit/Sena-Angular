jornaleros.controller('Detalle', function($scope, $http, $location, $routeParams){
	var api = "http://localhost/curso-angular/api/";

	$http({
		method: "GET",
		url: api + "findJornalero",
		params: {
			idJornalero: $routeParams.idJornalero
		}
	}).then(function(response){

		$scope.jornalero = response.data.result[0];
		console.log(response);

	}, function(response){
		console.log(response);
	});

	$scope.actualizar = function() {
		
		$http({
			method: "POST",
			url: api + "updateSimple",
			data: $scope.jornalero
		}).then(function(response){

			$location.path("/");

		}, function(response){
			console.log(response);
		})

	}

});