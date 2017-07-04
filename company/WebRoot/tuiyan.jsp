<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<html>
  <head>
    
    <title>My JSP 'tuiyan.jsp' starting page</title>

  </head>
  
  <body>
    <%
    String name=(String)session.getAttribute("name");
    List list=(List)application.getAttribute("yong");
    list.remove(name);
    session.invalidate();
    response.sendRedirect("index.jsp");
     %>
  </body>
</html>
