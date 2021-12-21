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
				<h1>New Table</h1>
			</div>
			<div>
				<a href="/logout">Logout</a>
			</div>
		</div>
		<div>
			<form:form action="/create" method="post" modelAttribute="newTable">
			<h6>Guest name must be at least 2 letters</h6>
				<div class="input-group mb-3">
				    <form:label class="input-group-text" path="name">Guest Name</form:label>
				    <form:errors path="name"/>
				    <form:input path="name" class="form-control"/>
				</div>
				<div class="input-group mb-3">
					<form:label class="input-group-text" path="guests">Number of Guests</form:label>
					<form:select path="guests" class="form-control">
							<form:option value="1">1</form:option>
							<form:option value="2">2</form:option>
							<form:option value="3">3</form:option>
							<form:option value="4">4</form:option>
							<form:option value="5">5</form:option>
							<form:option value="6">6</form:option>
							<form:option value="7">7</form:option>
							<form:option value="8">8</form:option>
							<form:option value="9">8</form:option>
							<form:option value="10">10</form:option>		
					</form:select>
				</div>		
				<div class="input-group mb-3">
				    <form:label class="input-group-text" path="notes">Notes</form:label>
				    <form:errors path="notes"/>
				    <form:input path="notes" class="form-control"/>
				</div>
				<div class="flex flex-end">
					<div>
						<a href="/dashboard" class="btn btn2 btn-danger mx-3">Cancel</a>
					</div>					
					<div>
						<button type="submit" class="btn btn2 btn-primary">Submit</button>
					</div>	
				</div>
			</form:form>
		</div>

	</div>
</body>
</html>