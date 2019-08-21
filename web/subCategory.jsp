<%-- 
    Document   : subCategory
    Created on : 10 Jul, 2018, 3:48:04 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
        <div class="outer">
            <div class="c4H">
                <%
                    int scid1=0;
                    boolean flag=true;
                    Connection con=Jdbc.getConnection();
                    
                    int cid = Integer.parseInt(request.getParameter("cid"));
                    String sql="select * from subcategory where cid=?";
                    
                    PreparedStatement stmt=con.prepareStatement(sql);
                    stmt.setInt(1,cid);
                    ResultSet rs=stmt.executeQuery();
                    
                    while(rs.next())
                    {
                        int scid=rs.getInt(1);
                        String scname=rs.getString(2);
                         
                        if(flag)
                           scid1=scid;
                        flag=false;   

                    %>
                        <div class="c5H">
                            
                            <a class="aCat" href="subCategory.jsp?cid=<%=cid%>&scid=<%=scid%>"><%=scname%></a>
                            

                        </div>       
                    <%

                      }

                    %>
               
            </div>
            <div style="padding:20px;border:0px solid red;">
                <%
                    con=Jdbc.getConnection();
                    
                    if(request.getParameter("scid")!=null)
                    {
                        scid1 = Integer.parseInt(request.getParameter("scid"));
                    }
                    
                    sql="select pid,pname,price,description,img from art where scid=?";
                    
                    stmt=con.prepareStatement(sql);
                    stmt.setInt(1,scid1);
                    rs=stmt.executeQuery();
                    
                    while(rs.next())
                    {
                    int pid=rs.getInt(1);
                %>
            <div style="float:left;margin-top:5px;width:30%;height:170px;padding:10px;border:0px solid black;">
                    <a href="productDetails.jsp?pid=<%=pid%>">
                    <div style="width:30%;float:left;padding:5px;border:0px solid yellow;">
                        <img src="<%="images/"+rs.getString("img")%>" style="width:100%;height:100%;">
                    </div>
                    <div style="float:left;width:60%;padding:10px;">
                        <div><%=rs.getString("pname")%></div>
                        <div>Price: <%=rs.getString("price")%></div>
                        <div><%=rs.getString("description").substring(0,5)+ "........."%></div>
                    </div>
                    </a>
                </div>           
                <%
                
                  }
                    
                %>

                
            </div>
        </div>
        
        
        <%@include file="footer.jsp" %>
    </body>
</html>
