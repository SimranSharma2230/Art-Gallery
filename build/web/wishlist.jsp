<%-- 
    Document   : wishlist
    Created on : 11 Aug, 2018, 2:34:06 PM
    Author     : dell
--%>
<%@page import="utility.Jdbc"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="header1.jsp" %>
        <br>
        
       
        <div>
            <%
            Connection con=Jdbc.getConnection();
             int  uid = (Integer)session.getAttribute("uid");
             String sql="select a.* from wishlist w,art a where w.aid = a.pid and  w.uid=?";
                    
                    PreparedStatement stmt=con.prepareStatement(sql);
                    stmt.setInt(1,uid);
                    ResultSet rs=stmt.executeQuery();
                    
                    while(rs.next())
                    {
                    
             %>
            <div style="border:0px solid red;width:100%;overflow:auto;">
                    <div style="width:30%;float:left;padding:5px;border:0px solid yellow;">
                           <img src="<%="images/"+rs.getString("img")%>" style="width:50%;height:50%;">
                        
                    </div>
                    <div style="float:left;width:60%;padding:10px;">
                        <div style="border:0px solid black;padding:15px;color:#ff4081;font-size:22px;font-style:normal;"><h1><%=rs.getString("pname")%></h1></div>
                    </div>
            </div>
                        <%
                        
                        }
                    
                        %>
                        
             

    </body>
</html>
