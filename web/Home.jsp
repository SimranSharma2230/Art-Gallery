<%-- +
    Document   : Home
    Created on : 9 Jul, 2018, 7:14:02 PM
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
       
                <br>
        <div style="border:0px solid black;padding:15px;color:#ff4081;text-align:center;font-size:22px;font-style:normal;">
            <h1> " Painting is an illusion, a piece of magic, so what you see is not what you see. "</h1>
        </div>
        <div>
                   
                 <marquee>
                    <img  class="home" src="images/A1.jpg">
                    <img class="home" src="images/1.jpg">
                    <img  class="home"src="images/2.jpg">
                    <img class="home" src="images/3.jpg">
                    <img class="home" src="images/4.jpg">
                    <img class="home" src="images/6.jpg">
                </marquee>
</div>
    <br>
    <br>
    <div style="border:0px solid blue;overflow:auto;">    
            <div class='text' style="padding:10px;width:22%;float:left;border:0px solid red;">
                <h3 style="color:black;">Peace of Mind</h3>
                Free returns within 14 days and our best price guarantee. Smooth delivery to your door, Trackable and insured. Join the growing number of happy Zatista collectors around the world!
            </div>

            <div class='text' style="width:22%;float:left;border:0px solid red;">
                <h3 style="color:black;">Quality Artwork</h3>
                This collection contains the best emerging and established artists, hand-picked by our curators, just for you. Official certificate of authenticity, signed by the artist, with every purchase.
            </div>

            <div class='text' style="width:22%;float:left;border:0px solid red;">
                <h3 style="color:black;">Own a True Original</h3>
                Express yourself with a unique piece created by the hands of one of talented artist.Transform your home with the impact of one-of-a-kind original art.
            </div>
             <div class='text' style="width:22%;float:left;border:0px solid red;">
                <h3 style="color:black;">Personal Service</h3>
               Your personal art concierge is here to help. Store's friendly and transparent experience is a refreshing way to buy art. We’re only an e-mail or phone call away. 
            </div>
     </div>
    <br>
   <div style="border:0px solid green;">
        <h2>ORIGINAL ART</h2>
        Great art Piece from the established and emerging Indian & International artist with authentication certificate.
    </div>
    <br>
    
    <%@include file="footer.jsp" %>

        
	
    </body>
</html>
