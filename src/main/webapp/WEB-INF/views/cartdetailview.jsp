<jsp:include page="header.jsp"/>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="req" value="${pageContext.request.contextPath}" />
<div class="panel pannel-default">
	<div class="panel-header" align="center">Cart Detail Form</div>
	<div class="panel-body">

		<form:form action="${req}/car/cartsave" method="post" modelAttribute="car">
			<table border="1" width="600" align="center">
				<tr>
					<td></td>
					<td><form:hidden path="id" /></td>
				</tr>
				<tr>
					<td>Email ID </td>
					<td><form:input path="emailid" cssClass="form-control" /></td>
				</tr>
				<tr>
					<td>Category </td>
					<td><form:input path="category" cssClass="form-control" /></td>
				</tr>
				
				<tr>
					<td>Product</td>
					<td><form:input path="name" cssClass="form-control" /></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><form:input path="price" cssClass="form-control" /></td>
				</tr>
				<tr>
					<td>Quantity</td>
					<td><form:input path="quantity" cssClass="form-control" /></td>
				</tr>
				
				<tr align="center">
					<td align="center"><input type="submit" value="Save" /></td>
					<td align="center"><input type="reset" value="Reset" />
				</tr>
			</table>
		</form:form>
	</div>
</div>

<table class="table table-striped">
	<tr>
		<th>Cart Id</th>
		<th>Email Id</th>
		<th>Category</th>
		<th>Product</th>
		<th>Quantity</th>
		<th>Price</th>
	</tr>
	
	<c:forEach items="${carts}" var="carts">
		<tr>
			<td>${carts.id}</td>
			<td>${carts.emailid}</td>
			<td>${carts.category}</td>
			<td>${carts.name}</td>
			<td>${carts.price}</td>
			<td>${carts.quantity}</td>
			    <td><a href="${req}/car/cartview/${carts.id}"
				class="btn btn-sm btn-primary">View</a>&#160; <a
				href="${req}/car/cartdel/${carts.id}"
				class="btn btn-sm btn-primary">Delete</a></td>
				<td>
				<a href="${req}/viewdetails" class="btn btn-info" role="button">Back</a>
				</td>
		</tr>
	</c:forEach>
</table>
<div class="panel panel-default" id="footer">
    <div class="panel-footer">@Copyright : Copyright © 2016 Shopping Inc. All rights reserved.</div>
</div>
