<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Including the footer resource from resoruces/css/footer.css -->
<link href="<c:url value="/resources/css/footer.css" />"
	rel="stylesheet">
<div class="footer" id="footer">

	<div class="container">

		<!-- Adding First Section to the Footer -->
		<div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
			<h3>FIRSTSHOPPING</h3>
			<ul>
				<li><a href="<c:url value="/aboutus"/>"> About US </a></li>
				<li><a href="<c:url value="/contactus"/>"> Contact Us </a></li>
				<li><a href="<c:url value="/signin"/>"> Login </a></li>
				<li><a href="<c:url value="/signup"/>"> Register </a></li>
			</ul>
		</div>
		<!-- Adding Second Section For categories -->
		<div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
			<h3>CATEGORIES</h3>
			<ul>
				<li><a href="<c:url value="/mensapparel"/>"> Men Watches </a></li>
				<li><a href="<c:url value="/womensapparel"/>"> Women Watches </a></li>
				
				<li><a href="<c:url value="/offers"/>"> Offers</a></li>
			</ul>
		</div>
		<!-- Adding Payment Option  -->
		<div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
			<h3>CALL US</h3>
			<ul>
				<li>INDIA: +91 7605923127</li>
				
				
			</ul>
		</div>
	</div>
</div>

<!-- Footer copyright option -->
<div class="footer-bottom">
	<div class="container">
		<p class="pull-left">Copyright © FIRSTSHOPPING E-commerce ...2016
			@All right reserved.</p>

	</div>
</div>
</body>
</html>