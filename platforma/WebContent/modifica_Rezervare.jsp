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
<title>Date personale si codul rezervarii</title>
</head>
<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
<jsp:setProperty name="jb" property="*" />
<body>

<div class="banner">
	<div class="titlu">
		<h1 align="center">Va rugam introduceti datele personale</h1>
	</div>
	
	<%
		if (request.getParameter("modifica").equals("r")){
	%>

   <div class="box">
		<form action="modifica_RezervareR.jsp" method="post">
	    	<table>
	            <tr>
	                <td style="text-align:left">Nume:</td>
	                <td> <input type="text" placeholder="Introduceți numele" name="nume" size="30" class="casuta" /></td>
	            </tr>
	            <tr>
	                <td style="text-align:left">Prenume:</td>
	                <td> <input type="text" placeholder="Introduceți prenumele" name="prenume" size="30" class="casuta" /></td>
	            </tr>
	            <tr>
	                <td style="text-align:left">Telefon:</td>
	                <td> <input type="text" placeholder="Introduceți telefonul" name="telefon" size="30" class="casuta"/></td>
	            </tr>
	            <tr>
	                <td style="text-align:left">Email:</td>
	                <td> <input type="text" placeholder="Introduceți email" name="email" size="30" class="casuta"/></td>
	            </tr> 
	        </table>
	        <br />
	        <input type="submit" value="Continua"/>
	    </form>
    </div>
    
    
    <%
	} else if (request.getParameter("modifica").equals("h")){
	%>
    
	<div class="box">
		<form action="modifica_RezervareH.jsp" method="post">
	    	<table>
	            <tr>
	                <td style="text-align:left">Nume:</td>
	                <td> <input type="text" placeholder="Introduceți numele" name="nume" size="30" class="casuta"/></td>
	            </tr>
	            <tr>
	                <td style="text-align:left">Prenume:</td>
	                <td> <input type="text" placeholder="Introduceți prenumele" name="prenume" size="30" class="casuta" /></td>
	            </tr>
	            <tr>
	                <td style="text-align:left">Telefon:</td>
	                <td> <input type="text" placeholder="Introduceți telefonul" name="telefon" size="30" class="casuta"/></td>
	            </tr>
	            <tr>
	                <td style="text-align:left">Email:</td>
	                <td> <input type="text" placeholder="Introduceți email" name="email" size="30" class="casuta" /></td>
	            </tr>   
	        </table>
	        <br />
	        <input type="submit" value="Continua"/>
	    </form>
    </div>
    
    
     <%
    }
	%>
</div>

</body>
</html>