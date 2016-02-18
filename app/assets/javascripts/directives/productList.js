productsApp.directive('productList', [function () {
	return {
		restrict: 'A',
		scope: {
			productList: '='
		},
		templateUrl: '/assets/views/directives/productList.html',
		link: function (scope, iElement, iAttrs) {
			
		}
	};
}])