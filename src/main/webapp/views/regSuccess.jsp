<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Registration page</title>
</head>
<body>
<h1><font color='green'>Student Registration is Succusfully With Below Detais</font></h1>

<table>
			<tr>
				<td>Name:-</td>
				<td>${student.name}</td>
			</tr>
			
			
			<tr>
				<td>Password:-</td>
				<td>${student.pwd}</td>
			</tr>
			
			
			<tr>
				<td>Email:-</td>
				<td>${student.email}</td>
			</tr>
			
			<tr>
				<td>Phone Number:-</td>
				<td>${student.phNo}</td>
			</tr>
			
			<tr>
				<td>Gender:-</td>
				<td>${student.gender}</td>
			</tr>
			
			<tr>
				<td>Course:-</td>
				<td>${student.course}</td>
			</tr>
			
			<tr>
				<td>Preferred Timeing:-</td>
				<td>${student.ptime[0]}${student.ptime[1]}</td>
			</tr>
</table>

</body>
</html>