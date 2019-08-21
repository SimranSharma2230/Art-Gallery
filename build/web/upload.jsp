<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="utility.Jdbc"%>
<%@page import="java.sql.Connection"%>

<%
    String pimage="uploads/black.jpg";
    int aid = (Integer)(session.getAttribute("aid"));
    
    if(request.getContentType()!=null)
    {
        
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;

   String filePath = config.getServletContext().getRealPath("/")+ "images/";
   String fileName="";
   //out.print("---> " + config.getServletContext().getRealPath("/"));
   // Verify the content type
   String contentType = request.getContentType();
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      
      try { 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
         
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               String fieldName = fi.getFieldName();
               fileName = fi.getName();
               boolean isInMemory = fi.isInMemory();
               long sizeInBytes = fi.getSize();
            
               fileName = fileName.substring( fileName.lastIndexOf("\\")+1) ;
               // Write the file
               if( fileName.lastIndexOf("\\") >= 0 ) {
                  file = new File( filePath + 
                  fileName.substring( fileName.lastIndexOf("\\"))) ;
               } else {
                  file = new File( filePath + 
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;
               }
               /*
               if(! file.exists()) 
                    file.mkdir();
                    */
               fi.write( file ) ;
               //out.println("Uploaded Filename: " + filePath + fileName + "<br>");
               //pimage = "http://localhost:8080/ArtGallery/images/"+fileName;
               pimage = "images/"+fileName;
               
              // out.print("<br>pimage : "+ pimage);
               
               //code to add image in database
               try
               {
                   
               
               
               Connection con = Jdbc.getConnection();
               String sql="update art set img=? where pid = ?";
               PreparedStatement  stmt=con.prepareStatement(sql);
                stmt.setString(1,fileName);
                stmt.setInt(2,aid);


                stmt.executeUpdate();

               con.close();
               }
               catch(Exception e)
               {
                   out.print(e);
               }
            }
         }
         out.println("</body>");
         out.println("</html>");
      } catch(Exception ex) {
         System.out.println(ex);
      }
   } else {
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
    }
%>


<html>
    <head>
        <style type="text/css">
            body {background-color: khaki;}           
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Upload App in JSP</title>
    </head>
    <body>
        <img width=400 height=400 src="<%=pimage%>">
        
        <form action="upload.jsp" method="post" enctype="multipart/form-data">
            <b>Profile Pic:</b> <input type="file" name="file"><input type="submit" name="btn" value="Upload">
        </form>
    </body>
</html> 