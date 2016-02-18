productsApp.directive('productDetail', [function () {
	return {
		restrict: 'A',
		scope:{
			productDetail: '='
		},
		templateUrl: '/assets/views/directives/productDetail.html',
		link: function (scope, iElement, iAttrs) {
			
		}
	};
}])