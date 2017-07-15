<%-- 
    Document   : index
    Created on : Jul 11, 2017, 9:18:38 AM
    Author     : Rheo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>testting</title>
        <style>
            .button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
        </style>
    </head>
    <body>
    <center>
        <h1>Monteur Rooster</h1>
        
        <a href="monteur_toev.jsp">
            <button class="button" style="vertical-align: middel"><span>Monteur Toevoegen</span></button></a>
            <a href="filiaal_toev.jsp">    <button class="button" style="vertical-align: middel"><span>Filiaal Toevoegen</span></button></a>
           <button class="button" style="vertical-align: middel"><span>Rooster</span></button>
    </center>
    </body>
</html>
