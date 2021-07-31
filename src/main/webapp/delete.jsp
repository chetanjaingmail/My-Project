<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp"%>

	<div class="container">
		<h2>Delete User</h2>
		<form class="form-horizontal" action="deleteuser" method="post">

			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Name:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="name"
						placeholder="Enter name" name="name">
				</div>
			</div>
			
			

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-info">Delete</button>
				</div>
</body>
</html>