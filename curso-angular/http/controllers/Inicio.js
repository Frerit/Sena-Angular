jornaleros.controller('Inicio', function($scope, $http, $location){
	
	var api = "http://localhost/curso-angular/api/";

	$http({
		method: 'GET',
		url: api + 'readJornaleros'
	}).then(function successCallback(response) {
		$scope.listaJornaleros = response.data.result;
		console.log(response);
	}, function errorCallback(response) {
		console.log(response);
	});

	$scope.verDetalles = function(_id){
		$location.path("/detalles/" + _id)
	}

});