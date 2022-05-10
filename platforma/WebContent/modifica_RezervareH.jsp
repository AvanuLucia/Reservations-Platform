<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="style_modifica.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital,wght@1,100&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
<title>Rezervari</title>
</head>
<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
<jsp:setProperty name="jb" property="*" />
<body>
	<div class="banner">
	
	<%
		String nume = request.getParameter("nume");
    	String prenume = request.getParameter("prenume");
    	String telefon = request.getParameter("telefon");
    	String email = request.getParameter("email");
            
        jb.connect();
    %>
    
    	<div class="box">
			<form action="modifica_RezervareH2.jsp" method="post">
				<table class="tabel">
					<tr>
						<th>Modifica</th>
						<th>Data sosirii</th>
						<th>Data plecarii</th>
						<th>Numar camere rezervare</th>
					</tr>
					
					<%		
						int idU  = jb.getIdUtilizator(nume, prenume, telefon, email);
					
						ResultSet rs;
						
						rs = jb.afisareRezervari("rezervarihoteluri", idU);
					
						while (rs.next()) {
					%>
					<tr class="separating_line">
						<td>
						<%-- <input type="submit" value="Modifica"/>   --%>   
						<input type="radio" name="idRH" value="<%=rs.getInt("idRezervareH")%>"/>	
						</td>
						<td><%=rs.getString("dataSosire")%></td>
						<td><%=rs.getString("dataPlecare")%></td>
						<td><%=rs.getInt("nrCamereRezervate")%></td>
						<%
							}
						%>
					</tr>
				</table>
				<input type="submit" value="Modifica"/> 
			</form>
			<br />
		
			<%
				rs.close();
				jb.disconnect();
			%>
		</div>
	</div>
</body>
</html>