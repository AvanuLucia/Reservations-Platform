<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="style1.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital,wght@1,100&display=swap" rel="stylesheet">
<title>Orase</title>
</head>
<body>
	<div class="banner">
	
		<div class="content">
		
			<div>
				<h1>Bun venit!</h1>
				<p>Va rugam selectati orasul unde doriti sa efectuati rezervarea</p>
			</div>
		
		
			<div class="images-box">
			
				<div class="oras-box">
						<img src="bucuresti.jpg">
						<form action="index2.jsp" method="post">
							<input type="submit" name="orasAles" value="Bucuresti">  
						</form>
				</div>
				
				<div class="oras-box">
						<img src="cluj.jpg">
						<form action="index2.jsp" method="post">
						<input type="submit" name="orasAles" value="Cluj">  </form>
					</div>
				<div class="oras-box">
						<img src="brasov.jpg">
						<form action="index2.jsp" method="post">
						<input type="submit" name="orasAles" value="Brasov">  </form>
					</div>
					
				<div class="oras-box">
						<img src="iasi.jpg">
						<form action="index2.jsp" method="post">
						<input type="submit" name="orasAles" value="Iasi">  </form>
					</div>
				<div class="oras-box">
						<img src="galati.jpg">
						<form action="index2.jsp" method="post">
						<input type="submit" name="orasAles" value="Galati">  </form>
					</div>
				<div class="oras-box">
						<img src="timisoara.jpg">
						<form action="index2.jsp" method="post">
						<input type="submit" name="orasAles" value="Timisoara">  </form>
					</div>
				<div class="oras-box">
						<img src="craiova.jpg">
						<form action="index2.jsp" method="post">
						<input type="submit" name="orasAles" value="Craiova">  </form>
					</div>
				<div class="oras-box">
						<img src="sibiu.jpg">
						<form action="index2.jsp" method="post">
						<input type="submit" name="orasAles" value="Sibiu">  </form>
					</div>		
			</div>
			
			<p>Pentru a modifica o rezervare existenta, apasati unul din butoanele de mai jos</p>
		
			<div class="jos">
				<div class="buton">
					<form action="modifica_Rezervare.jsp">
							<input type="submit" value="Modifica Rezervare Restaurant" />
							<input type="hidden" name="modifica" value="r"/>
					</form>
				</div>
				
				<div class="buton">
					<form action="modifica_Rezervare.jsp">
						<input type="submit" value="Modifica Rezervare Hotel" />
						<input type="hidden" name="modifica" value="h"/>
					</form>
				</div>
			</div>
		
		
		</div>
		
	</div>
	
</body>
</html>
