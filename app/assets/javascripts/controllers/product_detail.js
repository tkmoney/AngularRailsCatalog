productsApp.controller('productCtrl', ['$scope', 'Product', '$routeParams', function($scope, Product, $routeParams){
	$scope.productId = $routeParams.id;
	$scope.product = {};

	Product.atId($scope.productId).$promise.then(function (product) {
		$scope.product = product;
		console.log($scope.product);
	});

}]);