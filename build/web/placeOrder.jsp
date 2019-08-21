<%-- 
    Document   : placeOrder
    Created on : 1 Aug, 2018, 12:54:07 PM
    Author     : dell
--%>

<%@page import="utility.AutoGenMail"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="utility.Jdbc"%>
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
            String btn = request.getParameter("btn");
            int  qty=Integer.parseInt(request.getParameter("qty"));
            String msg = "order placed by " + session.getAttribute("user")+ " for quantity : "+qty;
             int aid = Integer.parseInt(request.getParameter("aid"));
              int rid = Integer.parseInt(request.getParameter("oid"));
              
                     
             Integer sid = (Integer)session.getAttribute("uid");
             
             
            Connection con = Jdbc.getConnection();
            
            try
            {
                if(btn.equals("Place Order"))
                {
                    String sql="insert into notification (sid,rid,aid,msg,status) values(?,?,?,?,?)";
                    PreparedStatement stmt=con.prepareStatement(sql);

                    stmt.setInt(1,sid);
                    stmt.setInt(2,rid);
                    stmt.setInt(3,aid);
                    stmt.setString(4,msg);
                    stmt.setInt(5,1);

                    stmt.executeUpdate();
                    
                    sql="insert into orders (uid,aid,status,qty) values(?,?,?,?)";
                    stmt=con.prepareStatement(sql);

                    stmt.setInt(1,sid);
                    stmt.setInt(2,aid);
                    stmt.setInt(3,1);
                    stmt.setInt(4,qty);
                    stmt.executeUpdate();
                              
                }
                else
                {
                    
                    String sql="insert into wishlist (aid,uid) values(?,?)";
                    PreparedStatement stmt=con.prepareStatement(sql);

                    stmt.setInt(1,aid);
                    stmt.setInt(2,sid);

                    stmt.executeUpdate();
                    
                }
               
                
            
              
                
                con.close();
            }
            catch(Exception e)
            {
                
                out.print("ERROR : " + e);
            }
            
       
        %>
        <jsp:forward page="productDetails.jsp">
                 <jsp:param name="pid" value="<%=aid%>"/>
             </jsp:forward>
        <%@include file="footer.jsp"%>
   
    </body>
</html>
