<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!-- My -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="<c:url value="/resources/js/product.js?v3"/>"></script>
<c:set var="req" value="${pageContext.request.contextPath}" />
<script src="${req}/resources/js/angular.js"></script>
<script type="text/javascript">
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
 $http.get("/backend/displayallproduct")
  .then(function(response) {
      $scope.names= response.data;
  });
 $scope.orderByMe = function(x) {
		$scope.myOrderBy = x;
	}
});


app.controller("cartCtrl", function($scope, $http) {

	$scope.refreshCart = function() {
		$http.get('/backend/customer/rest/cart/' + $scope.cartId).success(
				function(data) {
					$scope.cart = data;
				});
	};

	



</script>


<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Cart</h1>
                    <p>All the selected products in your shopping cart</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="myApp">

            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">

                <div>
                    <button class="btn btn-danger pull-left" ng-click = "clearCart()"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</button>
                  <a href="http://localhost:8099/backend/checkout?execution=e16s1" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a> 
        <%--   <a href="<spring:url value="/order/${cartId}" />" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a> --%>
          
                </div>

                <br/><br/><br/>

                <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                        <td>{{item.product.name}}</td>
                        <td>{{item.product.price}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)"><span class="glyphicon glyphicon-remove"></span>remove</a></td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total</th>
                        <th>{{calGrandTotal()}}</th>
                        <th></th>
                    </tr>
                </table>


            </div>
        </section>
