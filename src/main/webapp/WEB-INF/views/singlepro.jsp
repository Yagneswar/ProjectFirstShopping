

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="req" value="${pageContext.request.contextPath}" />
<spring:url value="/resources/images/product" var="productImages" />

<script src="${req}/resources/js/angular.js"></script>
 

<link rel="stylesheet" type="text/css" href="${css}/style.css">


<body>
<jsp:include page="header.jsp" />

<div class="panel pannel-default">
	<div class="panel-header" align="center">Product Form</div>
	<div class="panel-body">
 
		<form:form action="" method="post" modelAttribute="product" enctype="multipart/form-data">
			<table border="1" width="600" align="center">
				<tr>
					<td></td>
					<td><form:hidden path="id" /></td>
				</tr>
				<tr>
					<td>Product Brand</td>
					<td><form:input path="brand" cssClass="form-control"/></td>
				</tr>
				<tr>
					<td>Product Category</td>
					<td><form:input path="category" cssClass="form-control" /></td>

				</tr>
				<tr>
					<td>Product Name</td>
					<td><form:input path="name" cssClass="form-control" /></td>
				</tr>
				<tr>
					<td>Product Price</td>
					<td><form:input path="price" cssClass="form-control" /></td>
				</tr>
				
			
					<tr>
					<td colspan=2 align="center">
					<form:hidden path="purl" />
					<img ng-src="${productImages}/${product.id}.jpg" /></td>
				</tr>
				<tr>
					<td><a href="/backend/car/cartview" class="btn btn-sm btn-primary">View</a>&#160;
			 <a	href="${req}/admin/delete/${product.id}" class="btn btn-sm btn-primary">Delete</a></td>
		</tr>
					
				</tr>

				
			</table>
		</form:form>
	</div>
</div>
</table>
<jsp:include page="footer.jsp" />

</body>


