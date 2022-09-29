package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class error_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"UTF-8\" />\n");
      out.write("    <title>Error</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("      @import url(\"https://fonts.googleapis.com/css?family=Fira+Sans\");\n");
      out.write("      /*Variables*/\n");
      out.write("      .left-section .inner-content {\n");
      out.write("        position: absolute;\n");
      out.write("        top: 50%;\n");
      out.write("        transform: translateY(-50%);\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      * {\n");
      out.write("        box-sizing: border-box;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      html,\n");
      out.write("      body {\n");
      out.write("        margin: 0;\n");
      out.write("        padding: 0;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      body {\n");
      out.write("        font-family: \"Fira Sans\", sans-serif;\n");
      out.write("        color: #f5f6fa;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .background {\n");
      out.write("        position: absolute;\n");
      out.write("        top: 0;\n");
      out.write("        left: 0;\n");
      out.write("        width: 100%;\n");
      out.write("        height: 100%;\n");
      out.write("        background: linear-gradient(#0c0e10, #446182);\n");
      out.write("      }\n");
      out.write("      .background .ground {\n");
      out.write("        position: absolute;\n");
      out.write("        bottom: 0;\n");
      out.write("        width: 100%;\n");
      out.write("        height: 25vh;\n");
      out.write("        background: #0c0e10;\n");
      out.write("      }\n");
      out.write("      @media (max-width: 770px) {\n");
      out.write("        .background .ground {\n");
      out.write("          height: 0vh;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .container {\n");
      out.write("        position: relative;\n");
      out.write("        margin: 0 auto;\n");
      out.write("        width: 85%;\n");
      out.write("        height: 100vh;\n");
      out.write("        padding-bottom: 25vh;\n");
      out.write("        display: flex;\n");
      out.write("        flex-direction: row;\n");
      out.write("        justify-content: space-around;\n");
      out.write("      }\n");
      out.write("      @media (max-width: 770px) {\n");
      out.write("        .container {\n");
      out.write("          flex-direction: column;\n");
      out.write("          padding-bottom: 0vh;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .left-section,\n");
      out.write("      .right-section {\n");
      out.write("        position: relative;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .left-section {\n");
      out.write("        width: 40%;\n");
      out.write("      }\n");
      out.write("      @media (max-width: 770px) {\n");
      out.write("        .left-section {\n");
      out.write("          width: 100%;\n");
      out.write("          height: 40%;\n");
      out.write("          position: absolute;\n");
      out.write("          top: 0;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("      @media (max-width: 770px) {\n");
      out.write("        .left-section .inner-content {\n");
      out.write("          position: relative;\n");
      out.write("          padding: 1rem 0;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .heading {\n");
      out.write("        text-align: center;\n");
      out.write("        font-size: 9em;\n");
      out.write("        line-height: 1.3em;\n");
      out.write("        margin: 2rem 0 0.5rem 0;\n");
      out.write("        padding: 0;\n");
      out.write("        text-shadow: 0 0 1rem #fefefe;\n");
      out.write("      }\n");
      out.write("      @media (max-width: 770px) {\n");
      out.write("        .heading {\n");
      out.write("          font-size: 7em;\n");
      out.write("          line-height: 1.15;\n");
      out.write("          margin: 0;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .subheading {\n");
      out.write("        text-align: center;\n");
      out.write("        max-width: 480px;\n");
      out.write("        font-size: 1.5em;\n");
      out.write("        line-height: 1.15em;\n");
      out.write("        padding: 0 1rem;\n");
      out.write("        margin: 0 auto;\n");
      out.write("      }\n");
      out.write("      @media (max-width: 770px) {\n");
      out.write("        .subheading {\n");
      out.write("          font-size: 1.3em;\n");
      out.write("          line-height: 1.15;\n");
      out.write("          max-width: 100%;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .right-section {\n");
      out.write("        width: 50%;\n");
      out.write("      }\n");
      out.write("      @media (max-width: 770px) {\n");
      out.write("        .right-section {\n");
      out.write("          width: 100%;\n");
      out.write("          height: 60%;\n");
      out.write("          position: absolute;\n");
      out.write("          bottom: 0;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .svgimg {\n");
      out.write("        position: absolute;\n");
      out.write("        bottom: 0;\n");
      out.write("        padding-top: 10vh;\n");
      out.write("        padding-left: 1vh;\n");
      out.write("        max-width: 100%;\n");
      out.write("        max-height: 100%;\n");
      out.write("      }\n");
      out.write("      @media (max-width: 770px) {\n");
      out.write("        .svgimg {\n");
      out.write("          padding: 0;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("      .svgimg .bench-legs {\n");
      out.write("        fill: #0c0e10;\n");
      out.write("      }\n");
      out.write("      .svgimg .top-bench,\n");
      out.write("      .svgimg .bottom-bench {\n");
      out.write("        stroke: #0c0e10;\n");
      out.write("        stroke-width: 1px;\n");
      out.write("        fill: #5b3e2b;\n");
      out.write("      }\n");
      out.write("      .svgimg .bottom-bench path:nth-child(1) {\n");
      out.write("        fill: #432d20;\n");
      out.write("      }\n");
      out.write("      .svgimg .lamp-details {\n");
      out.write("        fill: #202425;\n");
      out.write("      }\n");
      out.write("      .svgimg .lamp-accent {\n");
      out.write("        fill: #2c3133;\n");
      out.write("      }\n");
      out.write("      .svgimg .lamp-bottom {\n");
      out.write("        fill: linear-gradient(#202425, #0c0e10);\n");
      out.write("      }\n");
      out.write("      .svgimg .lamp-light {\n");
      out.write("        fill: #efefef;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      @keyframes glow {\n");
      out.write("        0% {\n");
      out.write("          text-shadow: 0 0 1rem #fefefe;\n");
      out.write("        }\n");
      out.write("        50% {\n");
      out.write("          text-shadow: 0 0 1.85rem #ededed;\n");
      out.write("        }\n");
      out.write("        100% {\n");
      out.write("          text-shadow: 0 0 1rem #fefefe;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("    </style>\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body translate=\"no\">\n");
      out.write("    <div class=\"background\">\n");
      out.write("      <div class=\"ground\"></div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"left-section\">\n");
      out.write("        <div class=\"inner-content\">\n");
      out.write("          <h1 class=\"heading\">404</h1>\n");
      out.write("          <p class=\"subheading\">\n");
      out.write("            Looks like the page you were looking for is no longer here.\n");
      out.write("          </p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"right-section\">\n");
      out.write("        <svg\n");
      out.write("          class=\"svgimg\"\n");
      out.write("          xmlns=\"http://www.w3.org/2000/svg\"\n");
      out.write("          viewBox=\"51.5 -15.288 385 505.565\"\n");
      out.write("        >\n");
      out.write("          <g class=\"bench-legs\">\n");
      out.write("            <path\n");
      out.write("              d=\"M202.778,391.666h11.111v98.611h-11.111V391.666z M370.833,390.277h11.111v100h-11.111V390.277z M183.333,456.944h11.111\n");
      out.write("            v33.333h-11.111V456.944z M393.056,456.944h11.111v33.333h-11.111V456.944z\"\n");
      out.write("            ></path>\n");
      out.write("          </g>\n");
      out.write("          <g class=\"top-bench\">\n");
      out.write("            <path\n");
      out.write("              d=\"M396.527,397.917c0,1.534-1.243,2.777-2.777,2.777H190.972c-1.534,0-2.778-1.243-2.778-2.777v-8.333\n");
      out.write("            c0-1.535,1.244-2.778,2.778-2.778H393.75c1.534,0,2.777,1.243,2.777,2.778V397.917z M400.694,414.583\n");
      out.write("            c0,1.534-1.243,2.778-2.777,2.778H188.194c-1.534,0-2.778-1.244-2.778-2.778v-8.333c0-1.534,1.244-2.777,2.778-2.777h209.723\n");
      out.write("            c1.534,0,2.777,1.243,2.777,2.777V414.583z M403.473,431.25c0,1.534-1.244,2.777-2.778,2.777H184.028\n");
      out.write("            c-1.534,0-2.778-1.243-2.778-2.777v-8.333c0-1.534,1.244-2.778,2.778-2.778h216.667c1.534,0,2.778,1.244,2.778,2.778V431.25z\"\n");
      out.write("            ></path>\n");
      out.write("          </g>\n");
      out.write("          <g class=\"bottom-bench\">\n");
      out.write("            <path\n");
      out.write("              d=\"M417.361,459.027c0,0.769-1.244,1.39-2.778,1.39H170.139c-1.533,0-2.777-0.621-2.777-1.39v-4.86\n");
      out.write("            c0-0.769,1.244-0.694,2.777-0.694h244.444c1.534,0,2.778-0.074,2.778,0.694V459.027z\"\n");
      out.write("            ></path>\n");
      out.write("            <path\n");
      out.write("              d=\"M185.417,443.75H400c0,0,18.143,9.721,17.361,10.417l-250-0.696C167.303,451.65,185.417,443.75,185.417,443.75z\"\n");
      out.write("            ></path>\n");
      out.write("          </g>\n");
      out.write("          <g id=\"lamp\">\n");
      out.write("            <path\n");
      out.write("              class=\"lamp-details\"\n");
      out.write("              d=\"M125.694,421.997c0,1.257-0.73,3.697-1.633,3.697H113.44c-0.903,0-1.633-2.44-1.633-3.697V84.917\n");
      out.write("            c0-1.257,0.73-2.278,1.633-2.278h10.621c0.903,0,1.633,1.02,1.633,2.278V421.997z\"\n");
      out.write("            ></path>\n");
      out.write("            <path\n");
      out.write("              class=\"lamp-accent\"\n");
      out.write("              d=\"M128.472,93.75c0,1.534-1.244,2.778-2.778,2.778h-13.889c-1.534,0-2.778-1.244-2.778-2.778V79.861\n");
      out.write("            c0-1.534,1.244-2.778,2.778-2.778h13.889c1.534,0,2.778,1.244,2.778,2.778V93.75z\"\n");
      out.write("            ></path>\n");
      out.write("\n");
      out.write("            <circle\n");
      out.write("              class=\"lamp-light\"\n");
      out.write("              cx=\"119.676\"\n");
      out.write("              cy=\"44.22\"\n");
      out.write("              r=\"40.51\"\n");
      out.write("            ></circle>\n");
      out.write("            <path\n");
      out.write("              class=\"lamp-details\"\n");
      out.write("              d=\"M149.306,71.528c0,3.242-13.37,13.889-29.861,13.889S89.583,75.232,89.583,71.528c0-4.166,13.369-13.889,29.861-13.889\n");
      out.write("            S149.306,67.362,149.306,71.528z\"\n");
      out.write("            ></path>\n");
      out.write("            <radialGradient\n");
      out.write("              class=\"light-gradient\"\n");
      out.write("              id=\"SVGID_1_\"\n");
      out.write("              cx=\"119.676\"\n");
      out.write("              cy=\"44.22\"\n");
      out.write("              r=\"65\"\n");
      out.write("              gradientUnits=\"userSpaceOnUse\"\n");
      out.write("            >\n");
      out.write("              <stop\n");
      out.write("                offset=\"0%\"\n");
      out.write("                style=\"stop-color: #ffffff; stop-opacity: 1\"\n");
      out.write("              ></stop>\n");
      out.write("              <stop offset=\"50%\" style=\"stop-color: #ededed; stop-opacity: 0.5\">\n");
      out.write("                <animate\n");
      out.write("                  attributeName=\"stop-opacity\"\n");
      out.write("                  values=\"0.0; 0.5; 0.0\"\n");
      out.write("                  dur=\"5000ms\"\n");
      out.write("                  repeatCount=\"indefinite\"\n");
      out.write("                ></animate>\n");
      out.write("              </stop>\n");
      out.write("              <stop\n");
      out.write("                offset=\"100%\"\n");
      out.write("                style=\"stop-color: #ededed; stop-opacity: 0\"\n");
      out.write("              ></stop>\n");
      out.write("            </radialGradient>\n");
      out.write("            <circle\n");
      out.write("              class=\"lamp-light__glow\"\n");
      out.write("              fill=\"url(#SVGID_1_)\"\n");
      out.write("              cx=\"119.676\"\n");
      out.write("              cy=\"44.22\"\n");
      out.write("              r=\"65\"\n");
      out.write("            ></circle>\n");
      out.write("            <path\n");
      out.write("              class=\"lamp-bottom\"\n");
      out.write("              d=\"M135.417,487.781c0,1.378-1.244,2.496-2.778,2.496H106.25c-1.534,0-2.778-1.118-2.778-2.496v-74.869\n");
      out.write("            c0-1.378,1.244-2.495,2.778-2.495h26.389c1.534,0,2.778,1.117,2.778,2.495V487.781z\"\n");
      out.write("            ></path>\n");
      out.write("          </g>\n");
      out.write("        </svg>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </body>\n");
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
