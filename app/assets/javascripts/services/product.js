productsApp.factory('Product', ['$resource', '$cacheFactory', function ($resource, $cacheFactory) {
		var products_key = 'products';
		var timestamp_key = 'timestamp';
		var max_delta = 60000; //one minute

		var cache = $cacheFactory('Product');
		var GetAll = $resource('/api/v1/products');
		var AtId = $resource('/api/v1/product/:id');

		return {
			all: function(){
				var products = cache.get(products_key);
				var last_timestamp = cache.get(timestamp_key);
				var time_delta = Math.abs(new Date() - last_timestamp);

				if (!products || (time_delta >= max_delta)) {
					products = GetAll.query();
					cache.put(products_key, products);
					cache.put(timestamp_key, new Date());
				}

				return products;
			},
			atId: function(id){
				var product = cache.get(id);
				var last_timestamp = cache.get(timestamp_key);
				var time_delta = Math.abs(new Date() - last_timestamp);

				if(!product || (time_delta >= max_delta)){
					product = AtId.get({id: id});
					cache.put(id, product);
					cache.put(timestamp_key, new Date());
				}
				return product;
			}
		};
	}
]);
