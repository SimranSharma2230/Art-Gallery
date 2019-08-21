<%-- 
    Document   : header1
    Created on : 8 Jul, 2018, 11:22:27 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="art.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="JavaScript">
			 
		function Search()
                {
                    var n=document.f.t.value;

                    if(n.length===0)
                    {
                         alert("Write something on search bar");
                         return(false);
                    }
                } 
                
        </script>
		
    </head>
    <body>
        <div style="width:100%;background:#454545; color:white;overflow:auto;">
            <div style="font-size:40px;padding:20px;width:50%; text-align:left; color:white; float:left;">
                <a style="text-decoration:none;color:white;" href="Home.jsp"> iLLusiON OR imaGinAtioN </a>
            </div>
            <div style="font-size:20px;padding:20px;text-align:right;">
                
                
                <%
                    
                if(session.getAttribute("user")!=null)    
                {
                %>
                <div><%=session.getAttribute("user")%></div>
                <%
                }
                if(session.getAttribute("uid")==null)
                {
                %>
                <a class="aheader" href="signin.jsp">Sign In </a> | <a class="aheader" href = "signup.jsp">Sign Up</a>
                <%
                }
                else
                {
                %>
                    <a class="aheader" href="signout.jsp">Sign Out </a>
                <%
                }
                %>
            </div>
            <div style="border:0px solid red;text-align:right;padding:10px;">
                <form action="search.jsp">
                <input type="text" name="t" size=60 style="border-radius:10px;height:30px;">
                <input style="background:#66ffff;border-radius:10px;height:35px;" type="submit" name="btn1" value="Search" onClick="Search();">
                </form>
            </div>
        </div> 

            <div style="width:100%;overflow:auto;">
                
			<div class="div">
                            <a href="category.jsp" class="aCat">Gallery</a>
			</div>
        <%

        if(session.getAttribute("user")!=null)    
        {
        %>
                        <div class="div">
                            <a href="GUIupload1.jsp" class="aCat">Upload</a>
			</div>
                

                        <div class="div">

                            <a href="myGallery.jsp" class="aCat">My Gallery</a>
			</div>
			<div class="div">
                            <a href="myOrders.jsp" class="aCat">My Orders</a>
			</div>
			<div class="div">
                            <a href="wishlist.jsp" class="aCat">WishList</a>
			</div>
                        <div class="div">
                            <a href="notification.jsp" class="aCat"> Notification</a>
                        </div>

      <%
                    
        } 
        
        %>
                               </div>
  </body>
</html>
                              

