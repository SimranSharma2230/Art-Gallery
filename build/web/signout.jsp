<%-- 
    Document   : signout
    Created on : 11 Jul, 2018, 4:12:20 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
         %>
            <jsp:forward page="Home.jsp"/>
                
                
            
    </body>
</html>
