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
<title>Utilizator</title>
</head>
<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
<jsp:setProperty name="jb" property="*" />
<body>
	<div class="banner">
		<div class="titlu">
			<h1 align="center">Introduceti datele personale</h1>
		</div>
		
		<%
			if (request.getParameter("ok").equals("Din restaurante")){
				String ok2 = "Din restaurante";
		%>
		
		<div class="box">
			<form action="nou_Utilizator2.jsp" method="post">
		    	<table>
		        	<tr>
		                <td> 
		                <input type="hidden" name="idR1" value="<%= java.lang.Integer.parseInt(request.getParameter("idR"))%>"/>
		           		<input type="hidden" name="ok2" value="<%=ok2%>"/>         
		           		</td>
		            </tr>
		            <tr>
		                <td style="text-align:left">Nume:</td>
		                <td> <input type="text" placeholder="Introduceti numele" class="casuta" name="nume" size="30" /></td>
		            </tr>
		            <tr>
		                <td style="text-align:left">Prenume:</td>
		                <td> <input type="text" placeholder="Introduceti prenumele" class="casuta" name="prenume" size="30" /></td>
		            </tr>
		            <tr>
		                <td style="text-align:left">Telefon:</td>
		                <td> <input type="text" placeholder="Introduceti telefonul" class="casuta" name="telefon" size="30" /></td>
		            </tr>
		            <tr>
		                <td style="text-align:left">Email:</td>
		                <td> <input type="text" placeholder="Introduceti adresa de email" class="casuta" name="email" size="30" /></td>
		            </tr>   
		        </table>
		        <br />
		        <input type="submit" value="Continua"/>
		    </form>
		</div> 
    
	    <%
			} else if (request.getParameter("ok").equals("Din hoteluri")){
		    	String ok2 = "Din hoteluri";
		%>
	
		<div class="box">
			<form action="nou_Utilizator2.jsp" method="post">
		    	<table>
		        	<tr>
		                <td> 
		                <input type="hidden" name="idH1" value="<%= java.lang.Integer.parseInt(request.getParameter("idH"))%>"/>
		           		<input type="hidden" name="ok2" value="<%=ok2%>"/>       
		           		</td>
		            </tr>
		            <tr>
		                <td style="text-align:left">Nume:</td>
		                <td> <input type="text" placeholder="Introduceți numele" name="nume" size="30" class="casuta"/></td>
		            </tr>
		            <tr>
		                <td style="text-align:left">Prenume:</td>
		                <td> <input type="text" placeholder="Introduceți prenumele" name="prenume" size="30" class="casuta"/></td>
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
	    	}
		%>
	</div>
</body>
</html>