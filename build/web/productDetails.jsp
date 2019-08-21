<%-- 
    Document   : productDetails
    Created on : 17 Jul, 2018, 3:34:47 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
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
        <div>
            <%
            Connection con=Jdbc.getConnection();
             int pid = Integer.parseInt(request.getParameter("pid"));
             String sql="select a.*, u.uname from art a, user u where u.id = a.oid and  pid=?";
                    
                    PreparedStatement stmt=con.prepareStatement(sql);
                    stmt.setInt(1,pid);
                    ResultSet rs=stmt.executeQuery();
                    
                    while(rs.next())
                    {
                    
             %>
             
             
            <div style="border:0px solid red;width:100%;overflow:auto;">
                    <div style="width:30%;float:left;padding:5px;border:0px solid yellow;">
                           <img src="<%="images/"+rs.getString("img")%>" style="width:100%;height:100%;">
                        
                    </div>
                    <div style="float:left;width:60%;padding:10px;">
                        <div style="border:0px solid black;padding:15px;color:#ff4081;font-size:22px;font-style:normal;"><h1><%=rs.getString("pname")%></h1></div>
                        <div style="border:0px solid black;">Artist:<%=rs.getString("uname")%></div>
                        <div style="border:0px solid black;">Size:<%=rs.getString("size")%></div>
                        <div style="border:0px solid black;">Price:Rs.<%=rs.getString("price")%></div>
                        <div style="border:0px solid black;">Description<br><%=rs.getString("description")%></div>
                        <div style="border:0px solid blue;">
                            <form action="placeOrder.jsp">
                                <Input type="hidden" name="aid" value="<%=rs.getInt("pid")%>">
                                <Input type="hidden" name="oid" value="<%=rs.getInt("oid")%>">
                                Quantity : <Input type="text" name="qty" >
                                <input type="submit" name="btn" value="Place Order">
                                <input type="submit" name="btn" value="Wishlist">
                                
                            </form>
                           </div>
                    </div>
                    
                               
                                
                                            
                                
            </div>
                                
                                       
                    
                    
                     

            
                        <%
                        
                          }
                        
                        %>
                        
        </div>
              
                        
    </body>
</html>
