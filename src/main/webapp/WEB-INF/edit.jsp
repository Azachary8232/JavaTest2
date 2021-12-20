<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/style.css"> 
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" /> 
<script type="text/javascript" src="js/app.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script> 
<title>Insert title here</title>
</head>
<body>
	<div class="container2 m-4">
		<div class="flex spaceBetween">	
			<div>
				<h1>Welcome</h1>
			</div>
			<div>
				<a href="/logout">Logout</a>
			</div>
		</div>
		<div>
			<form:form action="/create" method="post" modelAttribute="new">
				<input type="hidden" name="_method" value="put"/>
				<form:input type="hidden" path="id" />
			
			<div class="flex flex-end">
				<button type="submit" class="btn btn2 btn-primary">Submit</button>
			</div>	
			</form:form>
		</div>
		<div>
			<form action="/delete/id" method="post">
				<input type="hidden" name="_method" value="delete">
				<input type="submit" value="Delete">
			</form>
		</div>

	</div>
</body>
</html>