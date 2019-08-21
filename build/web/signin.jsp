<%-- 
    Document   : signin
    Created on : 8 Jul, 2018, 1:17:09 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="art.css">
    </head>
    <body>
        <%@include file="header1.jsp" %>
        <form action="validate.jsp" method="post">
            
 
 
            <div class="outer">
                <div style="margin-top:13%;width:100%;padding:20px;border:0px solid red;">
                     <%
            String msg = request.getParameter("msg");
            if(msg!=null)
                out.print("<h4 class=c3> " + msg + "</h4>");
        %>
                    <div style="text-align:center;padding:10px;">
                        <input style="width:300px;height:30px;border-radius:5px;" type="text" name="txtEmail"  placeholder="Email-Address">
                        
                    </div>
                    <div style="text-align:center;padding:10px;">
                        <input style="width:300px;height:30px;border-radius:5px;" type="password" name="txtPass"  placeholder="Password">
                    </div>
                    <div style="text-align:center;padding:10px;">
                        <input type=checkbox name="r" value="Remember Me">Remember Me
                    </div>
                    <div style="text-align:center;padding:10px;">
                        <input style="background: #0099ff;width:300px;height:30px;border-radius:5px;" type="submit" name="btn" value="Sign In">
                    </div>
                </div>
            </div>
        </form>
                 <%@include file="footer.jsp" %>
    </body>
</html>
