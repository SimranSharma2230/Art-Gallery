package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"art.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script language=\"JavaScript\">\n");
      out.write("\t\t\t \n");
      out.write("\t\tfunction Search()\n");
      out.write("                {\n");
      out.write("                    var n=document.f.t.value;\n");
      out.write("\n");
      out.write("                    if(n.length===0)\n");
      out.write("                    {\n");
      out.write("                         alert(\"Write something on search bar\");\n");
      out.write("                         return(false);\n");
      out.write("                    }\n");
      out.write("                } \n");
      out.write("                \n");
      out.write("        </script>\n");
      out.write("\t\t\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"width:100%;background:#454545; color:white;overflow:auto;\">\n");
      out.write("            <div style=\"font-size:40px;padding:20px;width:50%; text-align:left; color:white; float:left;\">\n");
      out.write("                <a style=\"text-decoration:none;color:white;\" href=\"Home.jsp\"> iLLusiON OR imaGinAtioN </a>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"font-size:20px;padding:20px;text-align:right;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                ");

                    
                if(session.getAttribute("user")!=null)    
                {
                
      out.write("\n");
      out.write("                <div>");
      out.print(session.getAttribute("user"));
      out.write("</div>\n");
      out.write("                ");

                }
                if(session.getAttribute("uid")==null)
                {
                
      out.write("\n");
      out.write("                <a class=\"aheader\" href=\"signin.jsp\">Sign In </a> | <a class=\"aheader\" href = \"signup.jsp\">Sign Up</a>\n");
      out.write("                ");

                }
                else
                {
                
      out.write("\n");
      out.write("                    <a class=\"aheader\" href=\"signout.jsp\">Sign Out </a>\n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div style=\"border:0px solid red;text-align:right;padding:10px;\">\n");
      out.write("                <form action=\"search.jsp\">\n");
      out.write("                <input type=\"text\" name=\"t\" size=60 style=\"border-radius:10px;height:30px;\">\n");
      out.write("                <input style=\"background:#66ffff;border-radius:10px;height:35px;\" type=\"submit\" name=\"btn1\" value=\"Search\" onClick=\"Search();\">\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div> \n");
      out.write("\n");
      out.write("            <div style=\"width:100%;overflow:auto;\">\n");
      out.write("                \n");
      out.write("\t\t\t<div class=\"div\">\n");
      out.write("                            <a href=\"category.jsp\" class=\"aCat\">Gallery</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("        ");


        if(session.getAttribute("user")!=null)    
        {
        
      out.write("\n");
      out.write("                        <div class=\"div\">\n");
      out.write("                            <a href=\"GUIupload1.jsp\" class=\"aCat\">Upload</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("                \n");
      out.write("\n");
      out.write("                        <div class=\"div\">\n");
      out.write("\n");
      out.write("                            <a href=\"myGallery.jsp\" class=\"aCat\">My Gallery</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"div\">\n");
      out.write("                            <a href=\"myOrders.jsp\" class=\"aCat\">My Orders</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"div\">\n");
      out.write("                            <a href=\"wishlist.jsp\" class=\"aCat\">WishList</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("                        <div class=\"div\">\n");
      out.write("                            <a href=\"notification.jsp\" class=\"aCat\"> Notification</a>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("      ");

                    
        } 
        
        
      out.write("\n");
      out.write("                               </div>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("                              \n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
