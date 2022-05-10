<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="style_nou_Utilizator.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital,wght@1,100&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
<title>Rezervare Hotel</title>
</head>
<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
<jsp:setProperty name="jb" property="*" />
<body>
	<div class="banner">
		<div class="titlu">
			<h1 align="center">Modifica detaliile rezervarii</h1>  
		</div>
		
		<%
	            jb.connect();
	            int idRH1 = java.lang.Integer.parseInt(request.getParameter("idRH"));
	            
	            ResultSet rs = jb.afiseazaLinieDupaId("rezervarihoteluri", "idRezervareH", idRH1);
	            rs.first();
	            String dataSosire = rs.getString("dataSosire");
	            String dataPlecare = rs.getString("dataPlecare");
	            int nrCamereRezervate = rs.getInt("nrCamereRezervate");
	            rs.close();
	            jb.disconnect();
	        %>
	    <div class="box">   
			<form action="modifica_RezervareH3.jsp" method="post">
				<table>
		        	<tr>
		            	<td style="text-align:left">Data sosirii:</td>
		                <td> <input type="text" name="dataSosire" value="<%= dataSosire%>"size="30" class="casuta" />
		                <input type="hidden" name="idRH2" value="<%= idRH1 %>" /></td>
		            </tr>
		            <tr>
		                <td style="text-align:left">Data Plecarii:</td>
		                <td> <input type="text" name="dataPlecare" value="<%= dataPlecare%>" size="30" class="casuta"/></td>
		            </tr>
		            <tr>
		                <td style="text-align:left">Nr. camere rezervate:</td>
		            	<td> <input type="text" name="nrCamereRezervate" value="<%= nrCamereRezervate%>" size="30" class="casuta"/></td>
		          	</tr>
		     	</table>
		        <br />
				<input type="submit" value="Finalizare"/>
			</form>
		</div>
	</div>
</body>
</html>