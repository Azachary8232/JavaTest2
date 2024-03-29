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
	<div class="container2">
		<div class="flex spaceBetween">	
			<div>
				<h1>Open Tables</h1>
			</div>
			<div>
				<a href="/dashboard">home</a>
			</div>
		</div>
		<div>
			<h6>Tables</h6>	
		</div>
		<div class="my-5">
			<h4>Tables</h4>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<td>Guest Name</td>
						<td># Guests</td>
						<td>Arrived at</td>
						<td>Actions</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="table" items="${tables}">
					<tr>
						<td>${table.name}</td>
						<td>${table.guests }</td>
						<td>${table.arrival }</td>
						<td>
							<a href="/pickup/${table.id }">Pickup Table</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	
	
	
	</div>
</body>
</html>