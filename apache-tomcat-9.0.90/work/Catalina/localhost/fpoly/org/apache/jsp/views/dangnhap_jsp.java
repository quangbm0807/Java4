/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.90
 * Generated at: 2024-11-09 05:41:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class dangnhap_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/D:/HocTap/JAVA4/apache-tomcat-9.0.90/wtpwebapps/asm/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153359882000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1719291191888L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<title>Đăng nhập</title>\r\n");
      out.write("<meta charset=\"utf-8\" />\r\n");
      out.write("<meta name=\"viewport\"\r\n");
      out.write("	content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\r\n");
      out.write("\r\n");
      out.write("<link\r\n");
      out.write("	href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\"\r\n");
      out.write("	rel=\"stylesheet\"\r\n");
      out.write("	integrity=\"sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN\"\r\n");
      out.write("	crossorigin=\"anonymous\" />\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdn.jsdelivr.net/gh/freeps2/a7rarpress@main/swiper-bundle.min.css\">\r\n");
      out.write("<style>\r\n");
      out.write("body {\r\n");
      out.write("	overflow-x: hidden;\r\n");
      out.write("	background-color: #000;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".logo-en-fill {\r\n");
      out.write("	fill: #ff5b00;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".nav-link {\r\n");
      out.write("	font-weight: bolder;\r\n");
      out.write("	min-width: none\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".nav-link:hover {\r\n");
      out.write("	color: #FF5B00;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".navbar-nav .nav-link.active, .navbar-nav .nav-link.show {\r\n");
      out.write("	color: #FF5B00;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".dropdown:hover .dropdown-menu {\r\n");
      out.write("	display: block;\r\n");
      out.write("	animation: fadeIn 0.5s ease-in-out forwards;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".dropdown-item:hover {\r\n");
      out.write("	color: #FF5B00;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".dropdown-item.active {\r\n");
      out.write("	background-color: #FF5B00;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".dropdown-item.active:hover {\r\n");
      out.write("	color: black;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@media ( min-width : 992px) {\r\n");
      out.write("	.navbar.fixed-top {\r\n");
      out.write("		position: fixed;\r\n");
      out.write("		top: 0;\r\n");
      out.write("		right: 0;\r\n");
      out.write("		left: 0;\r\n");
      out.write("		z-index: 1030;\r\n");
      out.write("	}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".navbar-brand {\r\n");
      out.write("	margin-left: 100px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#vui {\r\n");
      out.write("	top: 30%;\r\n");
      out.write("	right: 54%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#khamPha {\r\n");
      out.write("	top: 40%;\r\n");
      out.write("	left: 15%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@\r\n");
      out.write("keyframes fadeIn {from { opacity:0;\r\n");
      out.write("	transform: translateY(-10px);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("to {\r\n");
      out.write("	opacity: 1;\r\n");
      out.write("	transform: translateY(0);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".btn-outline-success {\r\n");
      out.write("	background-color: #ff5900cf;\r\n");
      out.write("	color: #fff;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn-outline-success:hover {\r\n");
      out.write("	background-color: #FF5B00;\r\n");
      out.write("	color: #fff;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#dulich {\r\n");
      out.write("	bottom: 30%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".text-overlay {\r\n");
      out.write("	position: absolute;\r\n");
      out.write("	top: 50%;\r\n");
      out.write("	left: 50%;\r\n");
      out.write("	transform: translate(-50%, -50%);\r\n");
      out.write("	text-align: center;\r\n");
      out.write("	color: white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".text-overlay h1, .text-overlay h5 {\r\n");
      out.write("	margin: 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@media ( max-width : 768px) {\r\n");
      out.write("	.text-overlay h1 {\r\n");
      out.write("		font-size: 1.5rem;\r\n");
      out.write("	}\r\n");
      out.write("	.text-overlay h5 {\r\n");
      out.write("		font-size: 1rem;\r\n");
      out.write("	}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#bg1 {\r\n");
      out.write("	background-color: #333232;\r\n");
      out.write("	background-position: 50%;\r\n");
      out.write("	background-repeat: no-repeat;\r\n");
      out.write("	background-size: cover;\r\n");
      out.write("	height: auto;\r\n");
      out.write("	overflow: hidden;\r\n");
      out.write("	width: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#bg {\r\n");
      out.write("	background-image:\r\n");
      out.write("		url(https://res.klook.com/image/upload/v1488362758/aboutus/mission-bg.png);\r\n");
      out.write("	background-color: #eee;\r\n");
      out.write("	background-position: 50%;\r\n");
      out.write("	background-repeat: no-repeat;\r\n");
      out.write("	background-size: cover;\r\n");
      out.write("	height: 400px;\r\n");
      out.write("	overflow: hidden;\r\n");
      out.write("	width: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card-registration .select-input.form-control[readonly]:not([disabled])\r\n");
      out.write("	{\r\n");
      out.write("	font-size: 1rem;\r\n");
      out.write("	line-height: 2.15;\r\n");
      out.write("	padding-left: .75em;\r\n");
      out.write("	padding-right: .75em;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card-registration .select-arrow {\r\n");
      out.write("	top: 13px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".form {\r\n");
      out.write("	display: flex;\r\n");
      out.write("	flex-direction: column;\r\n");
      out.write("	gap: 10px;\r\n");
      out.write("	background-color: #4a4848;\r\n");
      out.write("	padding: 30px;\r\n");
      out.write("	width: 100%;\r\n");
      out.write("	border-radius: 20px;\r\n");
      out.write("	font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto,\r\n");
      out.write("		Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("::placeholder {\r\n");
      out.write("	font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto,\r\n");
      out.write("		Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".form button {\r\n");
      out.write("	align-self: flex-end;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".flex-column>label {\r\n");
      out.write("	color: #eee;\r\n");
      out.write("	font-weight: 600;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".inputForm {\r\n");
      out.write("	border: 1.5px solid #ecedec;\r\n");
      out.write("	border-radius: 10px;\r\n");
      out.write("	height: 50px;\r\n");
      out.write("	display: flex;\r\n");
      out.write("	align-items: center;\r\n");
      out.write("	padding-left: 10px;\r\n");
      out.write("	transition: 0.2s ease-in-out;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".input {\r\n");
      out.write("	color: #eee;\r\n");
      out.write("	margin-left: 10px;\r\n");
      out.write("	border-radius: 10px;\r\n");
      out.write("	border: none;\r\n");
      out.write("	width: 85%;\r\n");
      out.write("	height: 100%;\r\n");
      out.write("	background-color: #4a4848;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".input:focus {\r\n");
      out.write("	outline: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".inputForm:focus-within {\r\n");
      out.write("	border: 1.5px solid #2d79f3;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".flex-row {\r\n");
      out.write("	display: flex;\r\n");
      out.write("	flex-direction: row;\r\n");
      out.write("	align-items: center;\r\n");
      out.write("	gap: 10px;\r\n");
      out.write("	justify-content: space-between;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".flex-row>div>label {\r\n");
      out.write("	font-size: 14px;\r\n");
      out.write("	color: rgb(255, 255, 255);\r\n");
      out.write("	font-weight: 400;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".span {\r\n");
      out.write("	font-size: 14px;\r\n");
      out.write("	margin-left: 5px;\r\n");
      out.write("	color: #2d79f3;\r\n");
      out.write("	font-weight: 500;\r\n");
      out.write("	cursor: pointer;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".button-submit {\r\n");
      out.write("	margin: 20px 0 10px 0;\r\n");
      out.write("	background-color: #e51b1b;\r\n");
      out.write("	border: none;\r\n");
      out.write("	color: white;\r\n");
      out.write("	font-size: 15px;\r\n");
      out.write("	font-weight: 500;\r\n");
      out.write("	border-radius: 10px;\r\n");
      out.write("	height: 50px;\r\n");
      out.write("	width: 100%;\r\n");
      out.write("	cursor: pointer;\r\n");
      out.write("	transition: ease-in-out 0.3s;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".button-submit:hover {\r\n");
      out.write("	background-color: #e51b1bb1;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".p {\r\n");
      out.write("	text-align: center;\r\n");
      out.write("	color: white;\r\n");
      out.write("	font-size: 14px;\r\n");
      out.write("	margin: 5px 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn1 {\r\n");
      out.write("	margin-top: 10px;\r\n");
      out.write("	width: 100%;\r\n");
      out.write("	height: 50px;\r\n");
      out.write("	border-radius: 10px;\r\n");
      out.write("	display: flex;\r\n");
      out.write("	justify-content: center;\r\n");
      out.write("	align-items: center;\r\n");
      out.write("	font-weight: 500;\r\n");
      out.write("	gap: 10px;\r\n");
      out.write("	border: 1px solid #ededef;\r\n");
      out.write("	background-color: white;\r\n");
      out.write("	cursor: pointer;\r\n");
      out.write("	transition: 0.2s ease-in-out;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn1:hover {\r\n");
      out.write("	border: 1px solid #2d79f3;\r\n");
      out.write("	;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".form-control:focus, .form-select:focus, .form-floating textarea:focus {\r\n");
      out.write("	border-color: #FF5B00;\r\n");
      out.write("	box-shadow: 0 0 0 0.25rem #ff590053;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("	<div class=\"container-fluid pb-5\" id=\"bg1\">\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<h1 class=\"mt-5 text-center pb-5\" style=\"color: #eee;\">Đăng nhập</h1>\r\n");
      out.write("			<div class=\"alert\">\r\n");
      out.write("				");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("				");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"row\">\r\n");
      out.write("				<form class=\"form\" action=\"login\" method=\"post\">\r\n");
      out.write("					<div class=\"flex-column\">\r\n");
      out.write("						<label>Email </label>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"inputForm\">\r\n");
      out.write("						<svg height=\"20\" viewBox=\"0 0 32 32\" width=\"20\"\r\n");
      out.write("							xmlns=\"http://www.w3.org/2000/svg\">\r\n");
      out.write("                            <g id=\"Layer_3\" data-name=\"Layer 3\">\r\n");
      out.write("                                <path\r\n");
      out.write("								d=\"m30.853 13.87a15 15 0 0 0 -29.729 4.082 15.1 15.1 0 0 0 12.876 12.918 15.6 15.6 0 0 0 2.016.13 14.85 14.85 0 0 0 7.715-2.145 1 1 0 1 0 -1.031-1.711 13.007 13.007 0 1 1 5.458-6.529 2.149 2.149 0 0 1 -4.158-.759v-10.856a1 1 0 0 0 -2 0v1.726a8 8 0 1 0 .2 10.325 4.135 4.135 0 0 0 7.83.274 15.2 15.2 0 0 0 .823-7.455zm-14.853 8.13a6 6 0 1 1 6-6 6.006 6.006 0 0 1 -6 6z\"\r\n");
      out.write("								fill=\"white\">\r\n");
      out.write("                                </path>\r\n");
      out.write("                            </g>\r\n");
      out.write("                        </svg>\r\n");
      out.write("\r\n");
      out.write("						<input type=\"email\" id=\"email\" name=\"email\" class=\"input\"\r\n");
      out.write("							placeholder=\"Email\">\r\n");
      out.write("					</div>\r\n");
      out.write("\r\n");
      out.write("					<div class=\"flex-column\">\r\n");
      out.write("						<label>Mật khẩu </label>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"inputForm\">\r\n");
      out.write("						<svg height=\"20\" viewBox=\"-64 0 512 512\" width=\"20\"\r\n");
      out.write("							xmlns=\"http://www.w3.org/2000/svg\">\r\n");
      out.write("                            <path\r\n");
      out.write("								d=\"m336 512h-288c-26.453125 0-48-21.523438-48-48v-224c0-26.476562 21.546875-48 48-48h288c26.453125 0 48 21.523438 48 48v224c0 26.476562-21.546875 48-48 48zm-288-288c-8.8125 0-16 7.167969-16 16v224c0 8.832031 7.1875 16 16 16h288c8.8125 0 16-7.167969 16-16v-224c0-8.832031-7.1875-16-16-16zm0 0\"\r\n");
      out.write("								fill=\"white\">\r\n");
      out.write("                            </path>\r\n");
      out.write("                            <path\r\n");
      out.write("								d=\"m304 224c-8.832031 0-16-7.167969-16-16v-80c0-52.929688-43.070312-96-96-96s-96 43.070312-96 96v80c0 8.832031-7.167969 16-16 16s-16-7.167969-16-16v-80c0-70.59375 57.40625-128 128-128s128 57.40625 128 128v80c0 8.832031-7.167969 16-16 16zm0 0\"\r\n");
      out.write("								fill=\"white\">\r\n");
      out.write("                            </path>\r\n");
      out.write("                        </svg>\r\n");
      out.write("\r\n");
      out.write("						<input type=\"password\" id=\"password\" name=\"password\" class=\"input\"\r\n");
      out.write("							placeholder=\"********\">\r\n");
      out.write("						<!-- <svg viewBox=\"0 0 576 512\" height=\"1em\" xmlns=\"http://www.w3.org/2000/svg\">\r\n");
      out.write("                            <path\r\n");
      out.write("                                d=\"M288 32c-80.8 0-145.5 36.8-192.6 80.6C48.6 156 17.3 208 2.5 243.7c-3.3 7.9-3.3 16.7 0 24.6C17.3 304 48.6 356 95.4 399.4C142.5 443.2 207.2 480 288 480s145.5-36.8 192.6-80.6c46.8-43.5 78.1-95.4 93-131.1c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C433.5 68.8 368.8 32 288 32zM144 256a144 144 0 1 1 288 0 144 144 0 1 1 -288 0zm144-64c0 35.3-28.7 64-64 64c-7.1 0-13.9-1.2-20.3-3.3c-5.5-1.8-11.9 1.6-11.7 7.4c.3 6.9 1.3 13.8 3.2 20.7c13.7 51.2 66.4 81.6 117.6 67.9s81.6-66.4 67.9-117.6c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3z\">\r\n");
      out.write("                            </path>\r\n");
      out.write("                        </svg> -->\r\n");
      out.write("					</div>\r\n");
      out.write("\r\n");
      out.write("					<div class=\"flex-row\">\r\n");
      out.write("						<div>\r\n");
      out.write("							<input type=\"checkbox\"> <label>Ghi nhớ đăng nhập</label>\r\n");
      out.write("						</div>\r\n");
      out.write("						<a style=\"text-decoration: none;\" href=\"forgotPassword\"><span class=\"span\"\r\n");
      out.write("							style=\"color: #ffffff;\">Quên mật khẩu?</span></a>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"d-flex justify-content-center mt-3\">\r\n");
      out.write("						<button class=\"button-submit align-items-center mx-auto\"\r\n");
      out.write("							style=\"width: 300px;\">Đăng nhập</button>\r\n");
      out.write("					</div>\r\n");
      out.write("					<p class=\"p\">\r\n");
      out.write("						Chưa có tài khoản? <a style=\"text-decoration: none;\" href=\"signup\"><span\r\n");
      out.write("							class=\"span\" style=\"color: #ffffff;\">Đăng Ký</span></a>\r\n");
      out.write("\r\n");
      out.write("					</p>\r\n");
      out.write("					<p class=\"p line\">Hoặc tiếp tục với</p>\r\n");
      out.write("\r\n");
      out.write("					<div class=\"flex-row\">\r\n");
      out.write("						<a\r\n");
      out.write("							style=\"background-color: #333232; border: 1px solid #1c1c1c; color: #eee; text-decoration: none\"\r\n");
      out.write("							href=\"https://accounts.google.com/o/oauth2/auth?\r\n");
      out.write("	scope=profile email&redirect_uri=http://localhost:8080/fpoly/views/login&\r\n");
      out.write("	response_type=code&client_id=179364069437-b18usbpn68os845f4l2pv3jqk113mv0o.apps.googleusercontent.com\r\n");
      out.write("	&approval_prompt=force\r\n");
      out.write("\"\r\n");
      out.write("							class=\"btn1 google\" role=\"button\"> <svg version=\"1.1\"\r\n");
      out.write("								width=\"20\" id=\"Layer_1\" xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("								xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"\r\n");
      out.write("								viewBox=\"0 0 512 512\"\r\n");
      out.write("								style=\"enable-background: new 0 0 512 512;\" xml:space=\"preserve\">\r\n");
      out.write("            <path style=\"fill:#FBBB00;\"\r\n");
      out.write("									d=\"M113.47,309.408L95.648,375.94l-65.139,1.378C11.042,341.211,0,299.9,0,256c0-42.451,10.324-82.483,28.624-117.732h0.014l57.992,10.632l25.404,57.644c-5.317,15.501-8.215,32.141-8.215,49.456C103.821,274.792,107.225,292.797,113.47,309.408z\"></path>\r\n");
      out.write("            <path style=\"fill:#518EF8;\"\r\n");
      out.write("									d=\"M507.527,208.176C510.467,223.662,512,239.655,512,256c0,18.328-1.927,36.206-5.598,53.451c-12.462,58.683-45.025,109.925-90.134,146.187l-0.014-0.014l-73.044-3.727l-10.338-64.535c29.932-17.554,53.324-45.025,65.646-77.911h-136.89V208.176h138.887L507.527,208.176L507.527,208.176z\"></path>\r\n");
      out.write("            <path style=\"fill:#28B446;\"\r\n");
      out.write("									d=\"M416.253,455.624l0.014,0.014C372.396,490.901,316.666,512,256,512c-97.491,0-182.252-54.491-225.491-134.681l82.961-67.91c21.619,57.698,77.278,98.771,142.53,98.771c28.047,0,54.323-7.582,76.87-20.818L416.253,455.624z\"></path>\r\n");
      out.write("            <path style=\"fill:#F14336;\"\r\n");
      out.write("									d=\"M419.404,58.936l-82.933,67.896c-23.335-14.586-50.919-23.012-80.471-23.012c-66.729,0-123.429,42.957-143.965,102.724l-83.397-68.276h-0.014C71.23,56.123,157.06,0,256,0C318.115,0,375.068,22.126,419.404,58.936z\"></path>\r\n");
      out.write("        </svg> Google\r\n");
      out.write("						</a>\r\n");
      out.write("						<button class=\"btn1 apple\"\r\n");
      out.write("							style=\"background-color: #333232; border: 1px solid #1c1c1c; color: #eee;\">\r\n");
      out.write("							<svg xmlns=\"http://www.w3.org/2000/svg\" x=\"0px\" y=\"0px\"\r\n");
      out.write("								width=\"35\" height=\"35\" viewBox=\"0 0 48 48\">\r\n");
      out.write("                                <linearGradient\r\n");
      out.write("									id=\"Ld6sqrtcxMyckEl6xeDdMa_uLWV5A9vXIPu_gr1\" x1=\"9.993\"\r\n");
      out.write("									x2=\"40.615\" y1=\"9.993\" y2=\"40.615\"\r\n");
      out.write("									gradientUnits=\"userSpaceOnUse\">\r\n");
      out.write("                                    <stop offset=\"0\"\r\n");
      out.write("									stop-color=\"#2aa4f4\"></stop>\r\n");
      out.write("                                    <stop offset=\"1\"\r\n");
      out.write("									stop-color=\"#007ad9\"></stop>\r\n");
      out.write("                                </linearGradient>\r\n");
      out.write("                                <path\r\n");
      out.write("									fill=\"url(#Ld6sqrtcxMyckEl6xeDdMa_uLWV5A9vXIPu_gr1)\"\r\n");
      out.write("									d=\"M24,4C12.954,4,4,12.954,4,24s8.954,20,20,20s20-8.954,20-20S35.046,4,24,4z\">\r\n");
      out.write("                                </path>\r\n");
      out.write("                                <path fill=\"#fff\"\r\n");
      out.write("									d=\"M26.707,29.301h5.176l0.813-5.258h-5.989v-2.874c0-2.184,0.714-4.121,2.757-4.121h3.283V12.46 c-0.577-0.078-1.797-0.248-4.102-0.248c-4.814,0-7.636,2.542-7.636,8.334v3.498H16.06v5.258h4.948v14.452 C21.988,43.9,22.981,44,24,44c0.921,0,1.82-0.084,2.707-0.204V29.301z\">\r\n");
      out.write("                                </path>\r\n");
      out.write("                            </svg>\r\n");
      out.write("\r\n");
      out.write("							Facebook\r\n");
      out.write("\r\n");
      out.write("						</button>\r\n");
      out.write("					</div>\r\n");
      out.write("				</form>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<br> <br> <br>\r\n");
      out.write("	</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<script>\r\n");
      out.write("		document\r\n");
      out.write("				.getElementById('googleSignIn')\r\n");
      out.write("				.addEventListener(\r\n");
      out.write("						'click',\r\n");
      out.write("						function() {\r\n");
      out.write("							window.location.href = 'https://accounts.google.com/o/oauth2/v2/auth?scope=openid%20profile%20email&redirect_uri=http://localhost:8080/fpoly/views/login&response_type=code&client_id=179364069437-b18usbpn68os845f4l2pv3jqk113mv0o.apps.googleusercontent.com&access_type=offline';\r\n");
      out.write("						});\r\n");
      out.write("	</script>\r\n");
      out.write("\r\n");
      out.write("	<script src=\"//cdn.jsdelivr.net/gh/freeps2/a7rarpress@main/script.js\"></script>\r\n");
      out.write("	<script\r\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js\"></script>\r\n");
      out.write("	<script\r\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f0_reused = false;
    try {
      _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f0.setParent(null);
      // /views/dangnhap.jsp(303,4) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty error}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("					<div class=\"alert alert-danger\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${error}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</div>\r\n");
          out.write("				");
          int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      _jspx_th_c_005fif_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f1_reused = false;
    try {
      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f1.setParent(null);
      // /views/dangnhap.jsp(306,4) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty message}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("					<div class=\"alert alert-success\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("</div>\r\n");
          out.write("				");
          int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      _jspx_th_c_005fif_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
    }
    return false;
  }
}