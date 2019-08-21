<%-- 
    Document   : signup
    Created on : 8 Jul, 2018, 1:17:22 PM
    Author     : dell
--%>

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
                <form action="registeruser.jsp" method="post">
                <div style="margin-top:8%;margin-bottom:8%;width:100%;padding:20px;border:0px groove #f2f3f4 ;background:#f2f3f4;">
                    <div style="text-align:center;padding:10px;">
                        <h1>Create New Account</h1>
                    </div>
                      
                     <div style="text-align:center;padding:10px;">
                         <input style="width:300px;height:30px;border-radius:5px;" type="text" name="txt1"  placeholder="Name">
                        
                    </div>
                     <div style="text-align:center;padding:10px;">
                         <input style="width:300px;height:30px;border-radius:5px;" type="text" name="txt2"  placeholder="Phone Number">
                        
                    </div>
                     <div style="text-align:center;padding:10px;">
                         <input style="width:300px;height:30px;border-radius:5px;" type="text" name="txt3"  placeholder="Email-Address">
                        
                    </div> 
                     <div style="text-align:center;padding:10px;">
                         <input style="width:300px;height:30px;border-radius:5px;" type="text" name="txt4"  placeholder="Password">
                        
                    </div>
                     <div style="text-align:center;padding:10px;">
                         <input style="width:300px;height:30px;border-radius:5px;" type="text" name="txtPass1"  placeholder="Confirm Password">
                        
                    </div>
                    <div style="text-align:center;padding:10px;">
                        <input type=checkbox name="t" value="I accept the terms and conditions">I accept the terms and conditions
                    </div>
                      <div style="text-align:center;padding:10px;">
                        <input style="background: #0099ff;width:300px;height:30px;border-radius:5px;" type="submit" name="btn" value="Sign Up">
                    </div>
                </div>
            </form>   
          <%@include file="footer.jsp" %>
    </body>
</html>
