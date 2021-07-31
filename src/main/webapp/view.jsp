
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp"%>
<form action="showuser" method="get">
<div class="container">
<h1><%=request.getAttribute("test")%></h1>
  
  

  
  <h2>User Details</h2>
         
  <table class="table table-hover table-bordered">
    <thead>
      <tr>
        <th>Name</th>
        <th>Contact</th>
        <th>Email</th>
        <th>password</th>
      </tr>
    </thead>
    <tbody>
  
      <tr>
       <h1> <c:forEach var="ct" items="${requestScope.test}"></h1>
  
         <td>${ct.name}</td>
        <td>${ct.contact}</td>
        <td>${ct.email}</td>
        <td>${ct.pwd }</td>
      </tr>
      </c:forEach>	
      <tr>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
  </table>
</div>
</form>
</body>
</html>