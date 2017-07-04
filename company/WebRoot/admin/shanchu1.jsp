<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="service.GetnewService"/>

<html>
  <head>
    
    <title>My JSP 'shanchu1.jsp' starting page</title>

  </head>
  
  <body>
  <% 
  request.setCharacterEncoding("GBK");
  int id=Integer.parseInt(request.getParameter("newsID")) ;
  GetnewService gs=new GetnewService();
  int num=gs.shanNews(id);
  if(num>0)
  {
  response.sendRedirect("shanchu.jsp");
  }
  
  %>
  </body>
</html>
