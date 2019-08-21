package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import utility.Jdbc;

public final class GUIupload1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header1.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("`\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("         ");
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
      out.write("\n");
      out.write("         <form action=\"GUIupload2.jsp\" method=\"post\">\n");
      out.write("            <div class=\"outer\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <div style=\"margin-top:8%;margin-bottom:8%;width:100%;padding:20px;border:0px groove #f2f3f4 ;background:#f2f3f4;\">\n");
      out.write("                    \n");
      out.write("                       ");

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
                
      out.write("\n");
      out.write("                <div style=\"text-align:center;padding:10px;\">\n");
      out.write("                    <select name=\"category\">\n");
      out.write("                        ");
      out.print(cat);
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                <div style=\"text-align:center;padding:10px;\">\n");
      out.write("                    <select name=\"subcategory\">\n");
      out.write("                        ");
      out.print(subcat);
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                     <div style=\"text-align:center;padding:10px;\">\n");
      out.write("                         <h2>Art Name</h2>\n");
      out.write("                         <input style=\"width:300px;height:30px;border-radius:5px;\" type=\"text\" name=\"t1\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                     <div style=\"text-align:center;padding:10px;\">\n");
      out.write("                          <h2>Size</h2>\n");
      out.write("                         <input style=\"width:300px;height:30px;border-radius:5px;\" type=\"text\" name=\"t3\">\n");
      out.write("                        \n");
      out.write("                    </div> \n");
      out.write("                     <div style=\"text-align:center;padding:10px;\">\n");
      out.write("                          <h2>Price</h2>\n");
      out.write("                         <input style=\"width:300px;height:30px;border-radius:5px;\" type=\"text\" name=\"t4\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                     <div style=\"text-align:center;padding:10px;\">\n");
      out.write("                         <h2>Description</h2>\n");
      out.write("                         <textarea style=\"border-radius:5px;\" rows=\"5\" cols=\"50\"  name=\"t5\">\n");
      out.write("                         </textarea>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                      <div style=\"text-align:center;padding:10px;\">\n");
      out.write("                        <input style=\"background: #0099ff;width:100px;height:30px;border-radius:5px;\" type=\"submit\" name=\"btn\" value=\"Next\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>   \n");
      out.write("                    \n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <br>\n");
      out.write("        <div style=\"width:100%; background:#454545; color:white;overflow:auto;padding:10px;\">\n");
      out.write("\t\t\t<div style=\"font-size:15px;margin-top:20;padding: 10px;width:15%; text-align:left; color:white; float:left;\">\n");
      out.write("                           About Us\n");
      out.write("                        </div>\n");
      out.write("                        <div style=\"font-size:15px;margin-top:20;padding: 10px;width:15%; text-align:left; color:white; \">\n");
      out.write("                             Contact Us\n");
      out.write("                        </div>\n");
      out.write("                        <div style=\"font-size:15px;margin-top:20;padding: 10px;width:15%; text-align:left; color:white;float:left; \">\n");
      out.write("                            Customer service\n");
      out.write("                        </div>\n");
      out.write("                        <div style=\"font-size:15px;margin-top:20;padding: 10px;width:15%; text-align:left; color:white; \">  \n");
      out.write("                            Need Help\n");
      out.write("                        </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("         </body>\n");
      out.write("</html>\n");
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
