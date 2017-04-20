var jornaleros = angular.module('jornaleros', ['ngRoute']);

jornaleros.config(function($locationProvider, $routeProvider) {
	
	$locationProvider.hashPrefix("");


	$routeProvider

	.when("/", {
		templateUrl: "partials/inicio.html",
		controller: "Inicio"
	})

	.when("/detalles/:idJornalero", {
		templateUrl: "partials/detalle.html",
		controller: "Detalle"
	})

	.when("/404", {
		templateUrl: "partials/404.html",
		controller: "Error"
	})

	.otherwise({
		redirectTo: "/404"
	})

})