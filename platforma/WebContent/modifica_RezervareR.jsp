<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="style_modifica.css">
<link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
<title>Rezervari</title>
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
    %>

<div class="banner">
	<div class="box">
		<form action="modifica_RezervareR2.jsp" method="post">
			<table class="tabel">
				<tr>
					<th>Modifica</th>
					<th>Numar Persoane</th>
					<th>Data</th>
					<th>Ora</th>
				</tr>
				
				<%		
					int idU  = jb.getIdUtilizator(nume, prenume, telefon, email);
				
					ResultSet rs;
					rs = jb.afisareRezervari("rezervarirestaurante", idU);
				
					while (rs.next()) {
				%>
				<tr>
					<td>			    
					<%-- <input type="submit" value="Modifica"/>   --%>   
					<input type="radio" name="idRR" value="<%=rs.getInt("idRezervareR")%>"/>			
					</td>
					<td><%=rs.getInt("nrPersoane")%></td>
					<td><%=rs.getString("data")%></td>
					<td><%=rs.getString("ora")%></td>
					<%
						}
					%>
				</tr>
			</table>
			<input type="submit" value="Modifica"/> 
		</form>
	<br />
	</div>
</div>
	<%
		rs.close();
		jb.disconnect();
	%>

</body>
</html>