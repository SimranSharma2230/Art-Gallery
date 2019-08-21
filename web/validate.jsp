<%-- 
    Document   : validate
    Created on : 8 Jul, 2018, 1:20:43 PM
    Author     : dell
--%>

<%@page import="utility.Jdbc"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = Jdbc.getConnection();
            
            String email = request.getParameter("txtEmail");
            String pass = request.getParameter("txtPass");
            try
            {
                String sql="select * from user where email=? and password=?";
                PreparedStatement stmt=con.prepareStatement(sql);
                stmt.setString(1, email);
                stmt.setString(2, pass);
                ResultSet rs=stmt.executeQuery();
                
                if(rs.next())
                {
                    session.setAttribute("user",rs.getString(2));
                    session.setAttribute("uid",rs.getInt(1));
                    //out.print("<h1>Welcome</h1>");
             %>    
             <jsp:forward page="Home.jsp"/>
                    
              <%

                }
                else
                {
             %>    
             <jsp:forward page="sigin.jsp">
                 <jsp:param name="msg" value="Invalid username or password"/>
             </jsp:forward>
                    
              <%
                }
                con.close();
            }
            catch(Exception e)
            {
                
                out.print("ERROR : " + e);
            }
            
        %>
    </body>
</html>
999