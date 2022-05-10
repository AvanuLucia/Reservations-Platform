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
<title>Rezervare Restaurant</title>
</head>
<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
<jsp:setProperty name="jb" property="*" />
<body>
	<%      
		String idU3 = request.getParameter("idU2");
		String idH4 = request.getParameter("idH3");
 
        String dataS = request.getParameter("dataSosire");
        String dataP = request.getParameter("dataPlecare");
        String nrCR = request.getParameter("nrCamereRezervate");
            
        jb.connect(); 
        jb.adaugaRezervareH(java.lang.Integer.parseInt(idU3), java.lang.Integer.parseInt(idH4), dataS, dataP, java.lang.Integer.parseInt(nrCR));
		
		int cod = jb.getIdRezervareH(java.lang.Integer.parseInt(idU3), java.lang.Integer.parseInt(idH4), dataS, dataP, java.lang.Integer.parseInt(nrCR));
       
        jb.disconnect();      
        
     %>
     <div class="banner">
	     <h1 align="center"> Rezervarea s-a efectuat cu succes! </h1>
		 <h2 align="center"> Va asteptam! </h2>
		 </br>
	     <h3 align="center"> Codul rezervarii dumneavoastra este <%=cod %></h3>
   
	     <div align="center">
		     <form action="index.jsp">
		     	<input type="submit" value="Home"/> 
		     </form> 
	     </div>
     </div>
</body>
</html>