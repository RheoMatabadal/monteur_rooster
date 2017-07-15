
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monteur Toevoegen</title>
    </head>
    <body>
    <center>
       
        
        <a href="monteur_toev.jsp">
            <button class="button" style="vertical-align: middel"><span>Monteur Toevoegen</span></button></a>
            <a href="filiaal_toev.jsp">    <button class="button" style="vertical-align: middel"><span>Filiaal Toevoegen</span></button></a>
           <button class="button" style="vertical-align: middel"><span>Rooster</span></button>
    </center>
    </body>
         <center><h1>Monteur toevoegen</h1>
        <form  action="insert_mont.jsp">
  Naam:<br>
  <input type="text" name="naam" placeholder="voer naam in">
  <br>
  Voornaam:<br>
  <input type="text" name="voornaam" placeholder="voer voornaam in">
   <br>
    Geboortedatum:<br>
  <input type="date" name="geboortedatum" placeholder="voer geboortedatum in">
  <br>
  Adres:<br>
  <input type="text" name="adres" placeholder="voer adres in">
  <br>
  Telefoon nummer:<br>
  <input type="text" name="telefoonnummer" placeholder="voer telefoonnummer  in" >
  <br>
  
  <input type="submit" value="toevoegen">
</form> 

    </center>
    </body>
</html>
