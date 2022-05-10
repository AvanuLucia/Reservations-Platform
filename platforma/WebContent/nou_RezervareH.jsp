<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<h1 align="center">Introduceti detaliile rezervarii</h1>   
	</div>   
	     
	<div class="box">
		<form action="nou_RezervareH2.jsp" method="post">
			<table>
	        	<tr>
	            	<td style="text-align:left">Data sosirii:</td>
	                <td> <input type="text" placeholder="an-luna-zi" class="casuta" name="dataSosire" size="30" /></td>
	            </tr>
	            <tr>
	                <td style="text-align:left">Data plecarii:</td>
	                <td> <input type="text" placeholder="an-luna-zi" class="casuta" name="dataPlecare" size="30" /></td>
	            </tr>
	            <tr>
	                <td style="text-align:left">Nr. camere rezervare:</td>
	            	<td> <input type="text" placeholder="Introduceți numarul camerelor" class="casuta" name="nrCamereRezervate" size="30" /></td>
	          	</tr>
	     	</table>
	        <br />
			<input type="submit" value="Finalizare"/>
	     	<input type="hidden" name="idH3" value="<%= java.lang.Integer.parseInt(request.getParameter("idH2"))%>"/>
	        <input type="hidden" name="idU2" value="<%= java.lang.Integer.parseInt(request.getParameter("idU1"))%>"/>
		</form>
	</div>
	</div>
</body>
</html>