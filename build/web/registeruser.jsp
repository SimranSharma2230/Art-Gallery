<%-- 
    Document   : registeruser
    Created on : 10 Jul, 2018, 3:28:53 PM
    Author     : dell
--%>

<%@page import="utility.AutoGenMail"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="utility.Jdbc"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header1.jsp"%>
        <%
            String name=request.getParameter("txt1");
            
            String phone=request.getParameter("txt2");
            String email=request.getParameter("txt3");
            String pass=request.getParameter("txt4");
            //String Ps1name=request.getParameter("txtPass1");
            
            Connection con = Jdbc.getConnection();
            
            try
            {
                String sql="insert into user (uname,email,phone,password) values(?,?,?,?)";
                PreparedStatement stmt=con.prepareStatement(sql);
                stmt.setString(1,name);
                stmt.setString(2,email);

                stmt.setString(3,phone);
                stmt.setString(4,pass);
                
                stmt.executeUpdate();
                
                AutoGenMail a = new AutoGenMail(email,"Registration Successful", "Welcome to Art gallery....");
             %>    
             <jsp:forward page="signin.jsp"/>
              <%
                
                con.close();
            }
            catch(Exception e)
            {
                
                out.print("ERROR : " + e);
            }
            
       
        %>
        
        <%@include file="footer.jsp"%>
    </body>
</html>
