productsApp.controller('productListCtrl', ['$scope','Product', function($scope, Product){
	
	$scope.products = [];

	Product.all().$promise.then(function (products) {
		$scope.products = products;
	});


}]);