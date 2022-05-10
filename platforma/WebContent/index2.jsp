<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" href="style2.css">
	<link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
	<title>Restaurante sau Hoteluri</title>
</head>

<body>
	
	<section class="header">
		<video autoplay loop class="video-background" muted plays-inline>
			<source src="choice.mp4" type="video/mp4">
		</video>
	
		<div class="welcome-msg">
			<h1>Alegeti categoria dorita:</h1>
			
			<%String orasAles2 = request.getParameter("orasAles");
			session.setAttribute("orasAles3", orasAles2);%>

			
				<a href="restaurante.jsp" class="btn btn-restaurante">Restaurante </a>
				<a href="hoteluri.jsp" class="btn btn-hoteluri">Hoteluri </a>
		

		</div>
	
	</section>

	
	
	







	
	
</body>

</html>