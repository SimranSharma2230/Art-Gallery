<%-- 
    Document   : category
    Created on : 10 Jul, 2018, 2:24:40 PM
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
        <script language="JavaScript">
			var i= -1;
			
			var img0= new Image;
			img0.src="images/A1.jpg";
			var img1=new Image;
			img1.src="images/7.jpg";
			var img2=new Image;
			img2.src="images/8.jpg";
			var img3=new Image;
			img3.src="images/9.jpg";
                        var img4=new Image;
			img4.src="images/13.jpg";
                        var img5=new Image;
			img5.src="images/14.jpg";
                        var img6=new Image;
			img6.src="images/15.jpg";



			
			function slider()
			{
                                
                		i=(++i)%7;
				document.imgslider.src=eval("img"+i+".src");
				setTimeout(slider,1500);
			}
		</script>

    </head>
    <body onLoad="slider();">
        <%@include file="header1.jsp" %>
        <br>
        
        <div style="border:0px solid red;overflow:auto;padding:5px;">
            <div  style="width:18%;border-right:5px solid black;float:left;padding:5px;border:0px solid red;">
               <%
                    Connection con=Jdbc.getConnection();
                    String sql="select * from category";
                    PreparedStatement stmt=con.prepareStatement(sql);
                    ResultSet rs=stmt.executeQuery();

                    while(rs.next())
                    {
                    int cid=rs.getInt(1);
                    String cname=rs.getString(2);

                %>
                <div class="c5">
                    <a class="aCat" href="subCategory.jsp?cid=<%=cid%>"><%=cname%></a>
                                    
                </div>       
                <%
                
                      }
                    
                %>

            </div>
                
            <div style="border:0px solid green;float:left;padding:5px;width:50%;text-align:center;">
                <div>
                                    <img src="images/17.jpg" width="600" height="200">
                 </div>
                 <br>
                 <div class="text" style="border:0px solid green;text-align:center;float:left;padding:15px;width:90%;float:left;">
                     Discover thousands of wall paintings online for your home & office including watercolor,acrylic and oil canvas paintings from talented artists worldwide.
                     <br>
                     Explore fascinating regions of the world through the landscape,cultural,and abstract paintings of exceptional world artists.Top categories include folk art,religious paintings,and the new arrivals section.
                 </div>
             </div>
            
             <div style="border:0px solid green;float:left;text-align:center;width:20%;padding:5px;">
                   <img src="images/15.jpg" name="imgslider" width="350" height="650">
            </div>
                <div style="border:0px solid green;padding:5px;width:45%;height:10%;float:left;text-align:center;">
                   
                </div>
                                      
        </div>
        
        
        <%@include file="footer.jsp" %>
    </body>
</html>
