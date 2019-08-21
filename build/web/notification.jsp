<%-- 
    Document   : notification
    Created on : 3 Aug, 2018, 12:45:37 PM
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
            <%@include file="header1.jsp"%>
        <%
           
               
             Integer uid = (Integer)session.getAttribute("uid");
             
             
            Connection con = Jdbc.getConnection();
            
            try
            {
                String sql="Select * from notification where rid = "+uid + " and status<>3";
                PreparedStatement stmt=con.prepareStatement(sql);
                ResultSet rs=stmt.executeQuery();

                while(rs.next())
                {
                    int nid = rs.getInt("nid");
                    int rid = rs.getInt("sid");
                    int aid = rs.getInt("aid");


              %>
              <div>
                  <div style="width:40%;float:left;padding:10px;"><%=rs.getString(5)%></div>
                  <% if(rs.getInt("status")==1) {%>
                        <div  style="width:5%;float:left;padding:10px;"><a href="updateNotification.jsp?action=2&nid=<%=nid%>&rid=<%=rid%>&aid=<%=aid%>">Accept</a></div>
                        <div  style="padding:10px;"><a href="updateNotification.jsp?action=3&nid=<%=nid%>&rid=<%=rid%>&aid=<%=aid%>">Reject</a></div>
                   <% }else { %>
                        <div  style="width:5%;float:left;padding:10px;"><a href="updateNotification.jsp?action=4&nid=<%=nid%>">Ok</a></div>                   
                   <% } %>
              </div>
              
              <%
                
                }
            }
            catch(Exception e)
            {

            }
    %>            
    </body>
</html>
