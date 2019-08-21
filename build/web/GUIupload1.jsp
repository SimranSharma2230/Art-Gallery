<%-- 
    Document   : upload
    Created on : 10 Aug, 2018, 12:43:29 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
`
<%@page import="utility.Jdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <%@include file="header1.jsp" %>
         <form action="GUIupload2.jsp" method="post">
            <div class="outer">
                
                
                <div style="margin-top:8%;margin-bottom:8%;width:100%;padding:20px;border:0px groove #f2f3f4 ;background:#f2f3f4;">
                    
                       <%
                    Connection con=Jdbc.getConnection();
                    String sql="select * from category";
                    PreparedStatement stmt=con.prepareStatement(sql);
                    ResultSet rs=stmt.executeQuery();
                    String cat="";
                    while(rs.next())
                    {
                        cat=cat + "<option value=" + rs.getInt(1) + ">" + rs.getString(2) + "<option>";
                    }
                    
                    // sub category
                    sql="select * from subcategory";
                    stmt=con.prepareStatement(sql);
                    rs=stmt.executeQuery();
                    String subcat="";
                    while(rs.next())
                    {
                        subcat=subcat + "<option value=" + rs.getInt(1) + ">" + rs.getString(2) + "<option>";
                    }
                %>
                <div style="text-align:center;padding:10px;">
                    <select name="category">
                        <%=cat%>
                    </select>
                </div>
                <div style="text-align:center;padding:10px;">
                    <select name="subcategory">
                        <%=subcat%>
                    </select>
                </div>
                    
                    
                     <div style="text-align:center;padding:10px;">
                         <h2>Art Name</h2>
                         <input style="width:300px;height:30px;border-radius:5px;" type="text" name="t1">
                        
                    </div>
                     <div style="text-align:center;padding:10px;">
                          <h2>Size</h2>
                         <input style="width:300px;height:30px;border-radius:5px;" type="text" name="t3">
                        
                    </div> 
                     <div style="text-align:center;padding:10px;">
                          <h2>Price</h2>
                         <input style="width:300px;height:30px;border-radius:5px;" type="text" name="t4">
                        
                    </div>
                     <div style="text-align:center;padding:10px;">
                         <h2>Description</h2>
                         <textarea style="border-radius:5px;" rows="5" cols="50"  name="t5">
                         </textarea>
                        
                    </div>
                    
                      <div style="text-align:center;padding:10px;">
                        <input style="background: #0099ff;width:100px;height:30px;border-radius:5px;" type="submit" name="btn" value="Next">
                    </div>
                </div>
            </form>   
                    
        <%@include file="footer.jsp" %>
         </body>
</html>
