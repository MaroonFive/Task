<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="service.GetnewService"/>

<html>
  <head>
    
    <title>My JSP 'UpdateNewszhuan.jsp' starting page</title>

  </head>
  
  <body>
    <%
    request.setCharacterEncoding("GBK");
  String title=request.getParameter("t1");
  String conent=request.getParameter("t2");
  GetnewService  gs=new GetnewService();
  int num=gs.UpdateNews(title,conent);
  if(num>0)
  {
  response.sendRedirect("shanchu.jsp");
  }
  else
  {
  out.print("<script language='javascript'>alert('添加失败');</script>");
   		//跳转到manageProduct.jsp商品管理页面
  response.sendRedirect("UpdateNews.jsp"); 
  }
     %>
  </body>
</html>
