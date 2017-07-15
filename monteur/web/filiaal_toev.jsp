
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Filiaal Toevoegen</title>
    </head>
    <body>
        
    <center>
       
        
        <a href="monteur_toev.jsp">
            <button class="button" style="vertical-align: middel"><span>Monteur Toevoegen</span></button></a>
            <a href="filiaal_toev.jsp">    <button class="button" style="vertical-align: middel"><span>Filiaal Toevoegen</span></button></a>
           <button class="button" style="vertical-align: middel"><span>Rooster</span></button>
    </center>
    </body>
        <center><h1>Filiaal toevoegen</h1>
        <form  action="filiaal_toev.jsp">
  Filiaal lokatie:<br>
  <input type="text" name="fil_lok" placeholder="voer filiaal lokatie in" >
  <br>
  Filiaal naam:<br>
  <input type="text" name="fil_naam" placeholder="voer filiaal naam in" >
   <br>
 
  <input type="submit" value="toevoegen">

 <%
     String lokatie = request.getParameter("fil_lok");
     String naam = request.getParameter("fil_naam");
     
String connectionURL = "jdbc:mysql://localhost:3306/mont_db";
Connection connection = null;
PreparedStatement pstatement = null;
       
     Class.forName("com.mysql.jdbc.Driver").newInstance();
          int updateQuery = 0;
           if(lokatie!=null && naam!=null ){
	 		 // check if the text box having only blank spaces
	     if(lokatie!="" && naam!="" ) {
                 try{
                      connection = DriverManager.getConnection
              (connectionURL, "root", "root");
                       String queryString = "INSERT INTO filialen (filiaal_lokatie, filiaal_naam) VALUES (?,?)";
                pstatement = connection.prepareStatement(queryString);
              pstatement.setString(1, lokatie);
			  pstatement.setString(2, naam);
                           updateQuery = pstatement.executeUpdate();
                            if (updateQuery != 0) { %>
	           <br>
	           <TABLE 
		      <tr><th>Filiaal is toegevoegd.</th></tr>
		   </table>
              <%
              }
            } 
            catch (Exception ex) {
            out.println("Error: filiaal kon niet worden toegevoegd");
   
               }
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
	  }
	}
%>
                          
    
    </form> 
    </center>
    </body>
</html>
