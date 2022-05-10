<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="style_nou_Utilizator2.css">
<link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital,wght@1,100&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
<title>Utilizator</title>
</head>
<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
<jsp:setProperty name="jb" property="*" />
<body>
		<%
		
			String nume = request.getParameter("nume");
	        String prenume = request.getParameter("prenume");
	        String telefon = request.getParameter("telefon");
	        String email = request.getParameter("email");
	            
	        jb.connect();
	        
	        ResultSet rs = jb.afisareUtilizatori();
			int k = 0;
			while (rs.next()) {
				if(nume.equals(rs.getString("nume")) && prenume.equals(rs.getString("prenume")) && telefon.equals(rs.getString("telefon")) && email.equals(rs.getString("email")) ){
	        		k = 1;
				} 
			}
			if(k == 0){
				jb.adaugaUtilizator(nume, prenume, telefon, email);
			}
			int idU  = jb.getIdUtilizator(nume, prenume, telefon, email);
		
	        jb.disconnect();
	        
	        if (request.getParameter("ok2").equals("Din restaurante")){
	    %>
	    
	<div class="banner">
		<div class="scris">
		    <p> Apasa butonul de mai jos pentru a continua rezervarea </p>
		</div>
		<div class="parent">
			<form action="nou_RezervareR.jsp" method="post">
				<input type="submit" value="Stabileste detaliile rezervarii" />
				<input type="hidden" name="idR2" value="<%= java.lang.Integer.parseInt(request.getParameter("idR1"))%>"/>
				<input type="hidden" name="idU1" value="<%= idU%>"/>
			</form>
		</div>
	</div>
		
		<%
	        } else if (request.getParameter("ok2").equals("Din hoteluri")){		
		%>
		
	<div class="banner">
		<div class="scris">
		    <p> Apasa butonul de mai jos pentru a continua rezervarea </p>
		</div>
		<div class="parent">
			<form action="nou_RezervareH.jsp" method="post">
				<input type="submit" value="Stabileste detaliile rezervarii" />
				<input type="hidden" name="idH2" value="<%= java.lang.Integer.parseInt(request.getParameter("idH1"))%>"/>
				<input type="hidden" name="idU1" value="<%= idU%>"/>
			</form>
		</div>
	</div>
		<%
	        }
		%>
	
</body>
</html>