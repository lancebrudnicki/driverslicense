<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
</head>
<body>
	<a href="/persons/new">Create New Person</a>
	<h1>${person.firstName}${person.lastName}</h1>
	<div style="display:flex">
		<h1>License Number:</h1>
		<h1><c:out value="${person.number}"/></h1>
	</div>
	<div style="display:flex">
		<h1>State:</h1>
		<h1><c:out value="${person.state}"/></h1>
	</div>
	<div style="display:flex">
		<h1>Rating:</h1>
		<h1><c:out value="${person.rating}"/></h1>
	</div>
	<form action="/delete/${person.id}" method="post">
	    <input type="hidden" name="_method" value="delete">
	    <input type="submit" value="Delete">
	</form>
</body>
</html>