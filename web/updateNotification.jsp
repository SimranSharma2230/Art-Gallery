<%-- 
    Document   : UpdateNotification
    Created on : Jul 29, 2018, 10:02:13 AM
    Author     : nitin
--%>
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
            int nid=Integer.parseInt(request.getParameter("nid"));
            int rid=0;
            int aid=0;
            if(request.getParameter("rid")!=null)
                rid=Integer.parseInt(request.getParameter("rid"));
            if(request.getParameter("aid")!=null)
                aid=Integer.parseInt(request.getParameter("aid"));
            int action=Integer.parseInt(request.getParameter("action"));
            Integer uid = (Integer)session.getAttribute("uid");
            String msg="";
            String sql="";
            PreparedStatement  stmt;
            
            if(action==2)
            {
                msg = "your order is accepted";
            }
            else if(action==3)
            {
                msg = "your order is rejected";
            }
            
            Connection con = Jdbc.getConnection();
            
            try
            {
                if(action==2 || action==3)
                {
                    sql="insert into notification (sid,rid,aid,msg,status) values(?,?,?,?,?)";
                    stmt=con.prepareStatement(sql);
                    stmt.setInt(1,uid);
                    stmt.setInt(2,rid);

                    stmt.setInt(3,aid);
                    stmt.setString(4,msg);
                    stmt.setInt(5,action);

                    stmt.executeUpdate();
                    
                    //update notification
                    sql="update orders set status=? where uid = ? and aid=?";
                    stmt=con.prepareStatement(sql);
                    stmt.setInt(1,action);
                    stmt.setInt(2,rid);
                    stmt.setInt(3,aid);

                    stmt.executeUpdate();
                    
                    action=4;
                }
                //update notification
                sql="update notification set status=? where nid = ?";
                stmt=con.prepareStatement(sql);
                stmt.setInt(1,action);
                stmt.setInt(2,nid);

                stmt.executeUpdate();
                //
                
                
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
