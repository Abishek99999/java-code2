<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Form Submition</title>
</head>
<body>

	<h1>
		<font color='green'>${succMsg}</font>
	</h1>

	<form:form action="register" modelAttribute="student" method="POST">
		<table>
			<tr>
				<td>Student Name:-</td>
				<td><form:input path="name" /></td>
			</tr>

			<tr>
				<td>Password:-</td>
				<td><form:password path="pwd" /></td>
			</tr>


			<tr>
				<td>Email:-</td>
				<td><form:input path="email" /></td>
			</tr>

			<tr>
				<td>PhoneNumber:-</td>
				<td><form:input path="phNo" /></td>
			</tr>

			<tr>
				<td>Gender:-</td>
				<td><form:radiobutton path="gender" value="M" /> Male <form:radiobutton
						path="gender" value="F" /> FeMale</td>
			</tr>


			<!-- 			<tr> -->
			<!-- 				<td>Course:-</td> -->
			<!-- 				<td> -->
			<%-- 				<form:select path="course"> --%>
			<%-- 				<form:option value="">-select-</form:option> --%>
			<%-- 				<form:option value="java">JAVA</form:option> --%>
			<%-- 				<form:option value="python">Python</form:option> --%>
			<%-- 				<form:option value="php">PHP</form:option> --%>
			<%-- 				<form:option value=".net">.Net</form:option> --%>
			<%-- 				</form:select>  --%>
			<!-- 			</td> -->
			<!-- 			</tr> -->


			<tr>
				<td>Course:-</td>
				<td><form:select path="course">
						<form:option value="">-select-</form:option>
						<form:options items="${courses}" />
					</form:select></td>
			</tr>

			<!--               <tr> -->
			<!-- 				<td>Preferrable Timming:-</td> -->
			<%-- 				<td><form:checkbox path="ptime" value="mrng" /> Morning  --%>
			<%-- 				<form:checkbox path="ptime" value="evng"/> Evening --%>
			<!-- 			</td> -->
			<!-- 			</tr> -->

			<tr>
				<td>Preferrable Timming:-</td>
				<td><form:checkboxes  items="${Timings}" path="ptime"/> 
			</tr>



			<tr>
				<td><input type="reset" value="Reset" /></td>
				<td><input type="Submit" value="Register" /></td>
			</tr>


		</table>


	</form:form>
</body>
</html>