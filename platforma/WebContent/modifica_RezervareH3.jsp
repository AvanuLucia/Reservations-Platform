<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="style_final.css">
<link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital,wght@1,100&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
<title>Finalizare Modificare</title>
</head>
<body>
<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
<jsp:setProperty name="jb" property="*" />
	<%
            jb.connect();
            int idRH3 = java.lang.Integer.parseInt(request.getParameter("idRH2"));
            
            String dataSosire = request.getParameter("dataSosire");
            String dataPlecare = request.getParameter("dataPlecare");
            int nrCamereRezervate = java.lang.Integer.parseInt(request.getParameter("nrCamereRezervate"));

            String[] valori = {dataSosire, dataPlecare, String.valueOf(nrCamereRezervate)};
            String[] campuri = {"dataSosire", "dataPlecare", "nrCamereRezervate"};
            jb.modificaTabela("rezervarihoteluri", "idRezervareH", idRH3, campuri, valori);
            jb.disconnect();
	%>
	<div class="banner">
	    <h1 align="center">Modificarile au fost efectuate!</h1>
	    <div align="center">
			<form action="index.jsp">
				<input type="submit" value="Home">
			</form>
		</div>
	</div>
</body>
</html>