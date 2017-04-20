var navegacion = angular.module('navegacion', ['ngRoute']);

navegacion.config(function($locationProvider, $routeProvider) {
	
	//Sirve para indicarle a angular que no utilice prefijos. Solo trabajara con #
	$locationProvider.hashPrefix("");

	$routeProvider

	.when("/", {
		templateUrl: "partials/inicio.html",
		controller: "Inicio"
	})

	.when("/galeria", {
		templateUrl: "partials/galeria.html",
		controller: "Inicio"
	})

	.when("/mapa", {
		templateUrl: "partials/mapa.html",
		controller: "Mapa"
	})

	.when("/contacto", {
		templateUrl: "partials/contacto.html",
		controller: "Inicio"
	})

	.when("/404", {
		templateUrl: "partials/404.html",
		controller: "Inicio"
	})

	.otherwise({
		redirectTo: "/404"
	})

});