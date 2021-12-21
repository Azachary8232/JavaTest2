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
				<h1>Welcome back, SAMPLE</h1>
			</div>
			<div>
				<a href="/logout">Logout</a>
			</div>
		</div>
		<div class="my-5">
			<h4>Your Tables</h4>
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
					<tr>
						<td>SAMPLE</td>
						<td>SAMPLE</td>
						<td>SAMPLE</td>
						<td>
						<a href="">finished |</a>
						<a href=""> edit |</a>
						<a href=""> Give Up Table</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<a href="">See Other Tables</a>
		</div>
		<div>
			<a href="/create" class="btn btn2 btn-primary">+ new table</a>
		</div>
	</div>
</body>
</html>