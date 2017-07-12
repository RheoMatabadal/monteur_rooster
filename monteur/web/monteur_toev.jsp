<%-- 
    Document   : monteur_toev
    Created on : Jul 12, 2017, 9:29:21 AM
    Author     : Rheo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <center><h1>Monteur toevoegen</h1>
        <form action="/action_page.php">
  Naam:<br>
  <input type="text" name="naam" >
  <br>
  Voornaam:<br>
  <input type="text" name="voornaam" >
   <br>
    Geboortedatum:<br>
  <input type="date" name="geboortedatum" >
  <br>
  Adres:<br>
  <input type="text" name="adres" >
  <br>
  Telefoon nummer:<br>
  <input type="text" name="telefoonnummer" >
  <br>
  
  <input type="submit" value="Submit">
</form> 

    </center>
    </body>
</html>
