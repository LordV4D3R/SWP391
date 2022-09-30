package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Login Page</title>\r\n");
      out.write("        <link href=\"css/login.css\" rel=\"stylesheet\" type=\"text/css\"/>        \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>      \r\n");
      out.write("         <div class=\"container\">\r\n");
      out.write("         <div class=\"title-text\">\r\n");
      out.write("            <div class=\"title login\">\r\n");
      out.write("               Đăng Nhập\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"title signup\">\r\n");
      out.write("               Đăng Ký\r\n");
      out.write("            </div>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"form-container\">\r\n");
      out.write("            <div class=\"slide-controls\">\r\n");
      out.write("               <input type=\"radio\" name=\"slide\" id=\"login\" checked>\r\n");
      out.write("               <input type=\"radio\" name=\"slide\" id=\"signup\">\r\n");
      out.write("               <label for=\"login\" class=\"slide login\">Đăng Nhập</label>\r\n");
      out.write("               <label for=\"signup\" class=\"slide signup\">Đăng Ký</label>\r\n");
      out.write("               <div class=\"slider-tab\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-inner\">\r\n");
      out.write("               <form action=\"MainController\" class=\"login\">\r\n");
      out.write("                  <div class=\"field\">\r\n");
      out.write("                     <input type=\"text\" placeholder=\"Tài Khoản\" name=\"txtUserName\" required>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"field\">\r\n");
      out.write("                     <input type=\"password\" placeholder=\"Mật Khẩu\" name=\"txtPassword\" required>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"pass-link\">\r\n");
      out.write("                     <a href=\"#\">Quên Mật Khẩu?</a>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"field btn\">\r\n");
      out.write("                     <div class=\"btn-layer\"></div>\r\n");
      out.write("                     <input type=\"submit\" value=\"Đăng Nhập\" name=\"btAction\">\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"signup-link\">\r\n");
      out.write("                     Chưa Có Tài Khoản? <a href=\"\"> Đăng Ký Ngay</a>\r\n");
      out.write("                  </div>\r\n");
      out.write("               </form>\r\n");
      out.write("               <form action=\"MainController\">\r\n");
      out.write("                  <div class=\"field\">\r\n");
      out.write("                     <input type=\"text\" placeholder=\"Nhập Tên Tài Khoản\" name=\"txtRegisterUsername\" required>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"field\">\r\n");
      out.write("                     <input type=\"password\" placeholder=\"Nhập Mật Khẩu\" name=\"txtRegisterPassword\" required>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"field\">\r\n");
      out.write("                     <input type=\"password\" placeholder=\"Nhập Lại Mật Khẩu\" name=\"txtConfirmPassword\" required>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"field btn\">\r\n");
      out.write("                     <div class=\"btn-layer\"></div>\r\n");
      out.write("                     <input type=\"submit\" value=\" Đăng Ký\" name=\"btAction\">\r\n");
      out.write("                  </div>\r\n");
      out.write("               </form>\r\n");
      out.write("            </div>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("        <script language=\"javascript\">\r\n");
      out.write("            const loginText = document.querySelector(\".title-text .login\");\r\n");
      out.write("            const loginForm = document.querySelector(\"form.login\");\r\n");
      out.write("            const loginBtn = document.querySelector(\"label.login\");\r\n");
      out.write("            const signupBtn = document.querySelector(\"label.signup\");\r\n");
      out.write("            const signupLink = document.querySelector(\"form .signup-link a\");\r\n");
      out.write("            signupBtn.onclick = (()=>{\r\n");
      out.write("              loginForm.style.marginLeft = \"-50%\";\r\n");
      out.write("              loginText.style.marginLeft = \"-50%\";\r\n");
      out.write("            });\r\n");
      out.write("            loginBtn.onclick = (()=>{\r\n");
      out.write("              loginForm.style.marginLeft = \"0%\";\r\n");
      out.write("              loginText.style.marginLeft = \"0%\";\r\n");
      out.write("            });\r\n");
      out.write("            signupLink.onclick = (()=>{\r\n");
      out.write("              signupBtn.click();\r\n");
      out.write("              return false;\r\n");
      out.write("            });\r\n");
      out.write("        </script>  \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
