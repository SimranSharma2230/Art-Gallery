<%-- 
    Document   : GUIupload2
    Created on : 10 Aug, 2018, 1:14:15 PM
    Author     : dell
--%>
<%@page import="utility.AutoGenMail"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="utility.Jdbc"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="header1.jsp" %>
         <%
            int aid=0;
             int cat=Integer.parseInt(request.getParameter("category"));
             out.print("<h1>"+cat+"</h1>");
             int subcat=Integer.parseInt(request.getParameter("subcategory"));
  out.print("<h1>"+subcat+"</h1>");
             String aname=request.getParameter("t1");
             out.print("<h1>"+aname+"</h1>");
             String size=request.getParameter("t3");
             out.print("<h1>"+size+"</h1>");
             int price=Integer.parseInt(request.getParameter("t4"));
             out.print("<h1>"+price+"</h1>");
             String des=request.getParameter("t5");
             out.print("<h1>"+des+"</h1>");
             String img="";
             int oid= (Integer)session.getAttribute("uid");
             out.print("<h1>"+oid+"</h1>");
            Connection con = Jdbc.getConnection();
            
            try
            {
                String sql="insert into art (scid,cid,pname,size,price,description,img,oid) values(?,?,?,?,?,?,?,?)";
                
                PreparedStatement stmt=con.prepareStatement(sql);
                stmt.setInt(1,cat);
                stmt.setInt(2,subcat);

                stmt.setString(3,aname);
                stmt.setString(4,size);
                stmt.setInt(5,price);
                stmt.setString(6,des);
                stmt.setString(7,img);
                stmt.setInt(8,oid);
                stmt.executeUpdate();
                
                
                sql = "select max(pid) from art";
                stmt=con.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                
                if(rs.next())
                {
                    aid=rs.getInt(1);
                }
                session.setAttribute("aid",aid); 
                con.close();
               
            }
            catch(Exception e)
            {
                
                out.print("ERROR : " + e);
            }
             
            
         %>
         <jsp:forward page="upload.jsp"/>
         
        <!-- 
        <form action="upload.jsp" method="post" enctype="multipart/form-data">
            <input type="hidden" name="aid" value="<%=aid%>">
            <b>Profile Pic:</b> <input type="file" name="file"><input type="submit" name="btn" value="Upload">
        </form>
         -->
    </body>
</html>
