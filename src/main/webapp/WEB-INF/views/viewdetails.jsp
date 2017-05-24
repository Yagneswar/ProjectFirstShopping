<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<spring:url value="/resources/images/product" var="productImages" />
<c:set var="req" value="${pageContext.request.contextPath}" />
<script src="${req}/resources/js/angular.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div ng-app="myApp" ng-controller="myCtrl" ng-init="test='${id}'"> 

<p>Search:<input type="text" ng-model="test"></p>


<table border="1" width="50%" class="table table-hover table-responsive" >
<tr>
<th ng-click="orderByMe('id')">Product ID</th>
<th ng-click="orderByMe('name')">Product Name</th>
<th ng-click="orderByMe('brand')">Product Brand</th>
<th ng-click="orderByMe('category')">Product Category</th>

<th ng-click="orderByMe('price')">Product Price</th>
<th ng-click="orderByMe('purl')">Image</th>

<th ng-click="">View</th>
<th ng-click="">Add To Cart</th>

</tr>

<tr ng-repeat="x in names | orderBy:myOrderBy | filter:test">
<td>{{x.id}}</td>
<td>{{x.name}}</td>
<td>{{x.brand}}</td>
<td>{{x.category}}</td>
<td>{{x.price}}</td>
 <td><img ng-src="${productImages}/{{x.id}}.jpg" width="50"
				height="50"></td>
		<td><a ng-href="/backend/admin/singlepro/{{x.id}}"
				class="btn btn-info" role="button">View</a></td>	

<!-- <td><a ng-href="/backend/displayallproduct/{{x.id}}" class="btn btn-info" role="button">View</a></td>
 --><td> <a ng-href="/backend/cart" class="btn btn-info" role="button">Add to cart</a></td>
</tr>
</table>
</div>
<script>
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
</script> 
<jsp:include page="footer.jsp" />


	
</body>
</html>