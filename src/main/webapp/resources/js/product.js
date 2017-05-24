var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
 $http.get("http://localhost:8089/backend/displayallproduct")
  .then(function(response) {
      $scope.names= response.data;
  });
 $scope.orderByMe = function(x) {
		$scope.myOrderBy = x;
	}
});


app.controller("cartCtrl", function($scope, $http) {
	alert("CART ADDED 1 Items");
	$scope.refreshCart = function() {
		alert("CART ADDED 1 Items");
		$http.get('http://localhost:8089/backend/customer/rest/cart/' + $scope.cartId).success(
				function(data) {
					
					$scope.cart = data;
					$scope.gtotal=$scope.calGrandTotal();
					alert("Inside product.js cart function3");
				});
	};

	
/*$scope.clearCart = function(){ 
		
		$http.delete('/homeshop/customer/rest/cart/'+ $scope.cartId).success($scope.refreshCart()); };
	 */

	$scope.initCartId = function(cartId) {
		$scope.cartId = cartId;
		$scope.refreshCart(cartId);
	};

	$scope.addToCart = function(productId) {
		
		$http.put('http://localhost:8089/backend/customer/rest/cart/add/' + productId).success(
				function() {
					alert('Product successfully added to the cart!');
				});
	};

	$scope.removeFromCart = function(productId) {
		$http.put('http://localhost:8089/backend/customer/rest/cart/remove/' + productId).success(
				function(data) {
					$scope.refreshCart();
				});
	};

	$scope.calGrandTotal = function() {
		var grandTotal = 0;

		for (var i = 0; i < $scope.cart.cartItems.length; i++) {
			grandTotal += $scope.cart.cartItems[i].totalPrice;
		}

		return grandTotal;
	}
});


