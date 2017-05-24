 <%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
	<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    background-color: #eee;
}

*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    background-color: #fff;
    border-radius: 0.3em;
}

*[role="form"] h2 {
    margin-left: 5em;
    margin-bottom: 1em;
}



</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<sf:form>
	<div class="container">
            <form class="form-horizontal" role="form">
                <h2>Shipping Form</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" placeholder="Full Name" class="form-control" autofocus>
                        
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" id="email" placeholder="Email" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Address" class="col-sm-3 control-label">Address</label>
                    <div class="col-sm-9">
                        
                        <input type="text" id="address" placeholder="Address" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="number" class="col-sm-3 control-label" placeholder="Phone Number">Phone Number</label>
                    <div class="col-sm-9">
                        <input type="text" id="number" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Country</label>
                    <div class="col-sm-9">
                        <select id="country" class="form-control">
                            <option>India</option>
                            <option>Afghanistan</option>
                            <option>Bahamas</option>
                            <option>Cambodia</option>
                            <option>Denmark</option>
                            <option>Ecuador</option>
                            <option>Fiji</option>
                            <option>Gabon</option>
                            <option>Haiti</option>
                            
                        </select>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    
                    <div class="col-sm-6">
                        <div class="row">
                            
                           
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                
                <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">I accept <a href="#">terms</a> and conditions.
                            </label>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block" name="_eventId_submit">Shipping</button>
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
</sf:form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>