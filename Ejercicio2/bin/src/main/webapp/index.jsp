<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ControllerAcceso" method = "post">
		<label>User</label>
		<br>
		<input type="text" name="user" placeholder="Escribe tu Usuario">
		<br>
		<label>Pass</label>
		<br>
		<input type="text" name="pass" placeholder="Escribe tu contrase�a">
		<br>
		<input type="submit">
		<%String saludo ="hola mundo desde JAVA"; %>
		<h1 value=<%=saludo %>></h1>
	</form>
</body>
</html>