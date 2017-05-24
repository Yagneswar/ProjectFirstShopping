<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
 <%@ page isELIgnored ="false" %>
<c:set var="bt" value="/resources/css">
</c:set>
<link rel="stylesheet" href="<c:url value="${bt}/bootstrap.css"/>" />

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="<c:url value="/"/>">FIRSTSHOPPING</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="<c:url value="/"/>">Home</a></li>
			<li><a href="<c:url value="/aboutus"/>">About US</a></li>
			<li><a href="<c:url value="/contactus"/>">Contact US</a></li>
   
   
         
           <c:if test="${pageContext.request.userPrincipal.name==null}">    
            <li><a href="<c:url value="/reg"/>">Register</a></li>
            		     
            
			<li><a href="<c:url value="/login"/>">Login</a></li>
			
			</c:if>
			
			<li><a href="<c:url value="/viewdetails"/>">View All</a></li>
			<sec:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin">
			<li><a href="<c:url value="admin/product"/>">Admin</a></li>
			</sec:authorize>
			
			
			
			<li><a href="<c:url value="/cart"/>">Cart</a></li>	
			
			             <c:if test="${pageContext.request.userPrincipal.name !=null}">
			            <%-- <sec:authorize access="isAuthenticated()"> --%>
						<li><a href="<c:url value="/logout"/>">LogOut</a></li>
			             
                         </c:if>		         
			
		</ul>
	</div>
</nav>
</body>
</html>