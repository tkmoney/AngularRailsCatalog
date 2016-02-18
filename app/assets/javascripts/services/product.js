var productServices = angular.module('productServices', ['ngResource']);


productServices.factory('Product', ['$resource',
  function($resource){
  	//base URI
  	var baseURI = "/api/v1/products"
    return $resource(baseURI, {}, {
      query: {method:'GET', isArray: true }
    });
  }]);
