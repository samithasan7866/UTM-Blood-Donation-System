package org.apache.jsp.Views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminPanel_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Views/AdminPagesNavHeaderStyles.jsp");
    _jspx_dependants.add("/Views/AdminPagesNavHeader.jsp");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" <meta charset=\"UTF-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<style>\n");
      out.write("      .navbar {\n");
      out.write("        width: 100%;\n");
      out.write("        background-color: rgb(216, 19, 19);\n");
      out.write("        overflow: auto;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .navbar a {\n");
      out.write("        float: left;\n");
      out.write("        padding: 12px;\n");
      out.write("        color: white;\n");
      out.write("        text-decoration: none;\n");
      out.write("        font-size: 17px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .navbar a:hover {\n");
      out.write("        background-color: rgb(18, 241, 74);\n");
      out.write("      }\n");
      out.write("    \n");
      out.write("   @media screen and (max-width: 500px) {\n");
      out.write("        .navbar a {\n");
      out.write("          float: none;\n");
      out.write("          display: block;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("</style>\n");
      out.write("    ");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("<style>\n");
      out.write("body {font-family: Arial, Helvetica, sans-serif;}\n");
      out.write("\n");
      out.write(".active {\n");
      out.write("  background-color: #0be441;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("table {\n");
      out.write("  font-family: arial, sans-serif;\n");
      out.write("  border-collapse: collapse;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write(".header{\n");
      out.write("    background-color:#e20d0d;\n");
      out.write("}\n");
      out.write("/* h2{\n");
      out.write("    color:#e20d0d;\n");
      out.write("} */\n");
      out.write("h1{\n");
      out.write("    color:#e20d0d;\n");
      out.write("}\n");
      out.write("td, th {\n");
      out.write("  border: 1px solid #e20d0d;\n");
      out.write("  text-align: left;\n");
      out.write("  padding: 8px;\n");
      out.write("}\n");
      out.write("tr:nth-child() {\n");
      out.write("  background-color: #e71717;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"navbar\">\n");
      out.write("      <a class=\"#\" href=\"#\"><i class=\"fa fa-fw fa-eye\"></i> View</a>\n");
      out.write("      <a class=\"active\" href=\"#\"><i class=\"fa fa-fw fa-edit\"></i> Edit</a>\n");
      out.write("      <a class=\"#\" href=\"#\"><i class=\"fa fa-fw fa-trash\"></i> Delete</a>\n");
      out.write("    </div>");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("<div align=\"center\">\n");
      out.write("    <h1>UTM Blood Bank</h1>\n");
      out.write("    <h2>Admin Panel</h2>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    <div>\n");
      out.write("        <h2>Donors List</h2>\n");
      out.write("\n");
      out.write("<table>\n");
      out.write("  <tr class=\"header\">\n");
      out.write("    <th>Name</th>\n");
      out.write("    <th>Email</th>\n");
      out.write("    <th>Phone No.</th>\n");
      out.write("    <th>Gender</th>\n");
      out.write("    <th>Age</th>\n");
      out.write("    <th>Blood Group</th>\n");
      out.write("    <th>Address</th>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("    <div>\n");
      out.write("        <h2>Hospitals Bank List</h2>\n");
      out.write("\n");
      out.write("<table>\n");
      out.write("  <tr class=\"header\">\n");
      out.write("    <th>Name</th>\n");
      out.write("    <th>Email</th>\n");
      out.write("    <th>Phone No.</th>\n");
      out.write("    <th>Address</th>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("    <br>\n");
      out.write("    <div>\n");
      out.write("        <h2>Blood Banks List</h2>\n");
      out.write("\n");
      out.write("<table>\n");
      out.write("  <tr class=\"header\">\n");
      out.write("    <th>Name</th>\n");
      out.write("    <th>Email</th>\n");
      out.write("    <th>Phone No.</th>\n");
      out.write("    <th>Address</th>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("    <td>X</td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("    </body>\n");
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
