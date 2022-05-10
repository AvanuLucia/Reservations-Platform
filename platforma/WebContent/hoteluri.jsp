<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="style_RH.css">
<link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
<title>Hoteluri</title>
</head>
<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
<jsp:setProperty name="jb" property="*" />
<body>
	<% 
		jb.connect();
		
		String orasAles4 = String.valueOf(session.getAttribute("orasAles3"));
		String ok = "Din hoteluri";
	%>
	
<div class="banner">

	<div class="titlu">
		<h1>Hoteluri in <%=orasAles4 %></h1>
	</div>
		
	<div class="ordoneaza">
		<form action="hoteluri.jsp" method="post">
			<label>Ordoneaza dupa:</label>
			<select name="optiune">
				<option value="scorH">Scor</option>
				<option value="numeH">Nume</option>
				<option value="nrCamere">Numar Camere</option>
				<option value="nrPersoane">Numar Persoane</option>
				<option value="animale">Animale</option>
			</select>
			<input type="submit" name="sortare" value="Ordoneaza"/>
		</form>
	</div>
	
		<% 
				ResultSet rs;
				String rezultat = request.getParameter("optiune");
				
				if(rezultat!=null){
					if(rezultat.equals("animale")){
						rs = jb.afisareHoteluriAnimale(orasAles4, rezultat);
					}else {
						rs = jb.afisareHoteluriSortate(orasAles4, rezultat);
					}
				}else{
					rs = jb.afisareTabela("hoteluri", "orasH", orasAles4);
				}
				
			%>
	
	<div class="row">
		<%	
			while (rs.next()) {
		%>
			<div class="restaurant">
				<h1><%=rs.getString("numeH")%></h1>
					<p><%=rs.getString("descriereH")%></p>
						<p> Adresa: <%=rs.getString("adresaH")%>
						<br> Numar camere disponibile: <%=rs.getInt("nrCamere")%>
						<br> Capacitate camera: <%=rs.getInt("nrPersoane")%> persoane
						<br> Pret/noapte: <%=rs.getInt("pretNoapte")%> RON
						<br> Scor: <%=rs.getInt("scorH")%>/5
						<br> Accepta animale: <%=rs.getString("animale")%>
						</p>
					
					<form action="nou_Utilizator.jsp" method="post">
						<div align="center">
							<input type="hidden" name="ok" value="<%=ok%>"/>
							<input type="submit" value="Rezerva"/>
							<input type="hidden" name="idH" value="<%=rs.getInt("idHotel")%>"/>
						</div>
					</form>
			</div>
		<% } %>
	</div>
				
	

	<%
		rs.close();
		jb.disconnect();
	%>
	<div align="center">
		<form action="index.jsp">
			<input type="submit" value="Home">
		</form>
	</div>
	<br>
</div>
</body>
</html>
