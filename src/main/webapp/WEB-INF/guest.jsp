<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="guest.*"%>
 
<jsp:useBean id="guestDao" type="guest.GuestDao" scope="request" />
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>Implementacion del ObjectDB</title>
    </head>
 
    <body>
        
        <h2>
            Carga de Datos Visitantes
        </h2>
        
        <form method="POST" action="guest.html">
            Name: <input type="text" name="name" />
            Lastname: <input type="text" name="lastname" />
            <input type="submit" value="Add" />
        </form>
 
        <h4>Lista de Visitantes</h4>
        
        <hr><ol> 
        <% for (Guest guest : guestDao.getAllGuests()) { %>
            <li> <%= guest %> </li>
        <% } %>
        </ol><hr>
 
        
        
	</body>
</html>