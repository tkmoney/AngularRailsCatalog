productsApp.controller('productCtrl', ['$scope', function($scope){
	console.log('productServices', productServices);
	$scope.products = Product.all();
}]);