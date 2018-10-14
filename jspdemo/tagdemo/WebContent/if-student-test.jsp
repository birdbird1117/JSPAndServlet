<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*, com.code.jsp.tagdemo.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	List<Student> data = new ArrayList<>();

data.add(new Student("John", "Doe0", false));
data.add(new Student("John", "Doe1", false));
data.add(new Student("John", "Doe2", true));
	
pageContext.setAttribute("myStudents", data);

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>
	<c:forEach var="tempStudent" items="${myStudents }">
		<tr>
			<td>${tempStudent.firstName }</td> 
			<td>${tempStudent.lastName }</td> 
			<td>
				<c:if test="${tempStudent.goldCustomer}">
					Special Discount
				</c:if>				
				
				<c:if test="${not tempStudent.goldCustomer}">
					-
				</c:if>
				
			</td>
		</tr>
	
	</c:forEach>
	</table>
</body>
</html>