<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css&quot; rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js&quot; integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</head>
<body>
<h1>Bienvenido</h1>
<table class="table table-dark table-striped"id="tablaDatos">
<thead>
<th> IdUsua </th>
<th> Usuario </th>
<th> Contrase�a </th>
</thead>
<tbody>

</tbody>
</table>
<script type="text/javascript">
	$(document).ready(
			function(){
				$.post('ControllerMostrarInformacion',{
					
				}, function(response){
					let datos = JSON.parse(response);
				
					console.log(datos);
					var tabla = document.getElementById('tablaDatos');
					for(let item of datos){
						
						tabla.innerHTML += `
						<tr>
						<td>${item.idUsuario}</td>
						<td>${item.Usuario}</td>
						<td>${item.Pass}</td>
						
						</tr>
							
						console.log(item.Pass);
						
					}
					
					
				});
			});

</script>
</body>
</html>