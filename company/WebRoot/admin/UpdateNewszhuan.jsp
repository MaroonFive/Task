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
  out.print("<script language='javascript'>alert('���ʧ��');</script>");
   		//��ת��manageProduct.jsp��Ʒ����ҳ��
  response.sendRedirect("UpdateNews.jsp"); 
  }
     %>
  </body>
</html>
