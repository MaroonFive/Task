<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="entity.Liaoinfo"/>

<html>
  <head>
    
    <title>My JSP 'Chat.jsp' starting page</title>

  </head>
  
  <body>
  <%
  request.setCharacterEncoding("GBK");
  String se=request.getParameter("s1");//���������ɫ
  String zi=request.getParameter("z1");
  String name=(String)session.getAttribute("name");//���name����
  String nei="<font color="+se+" size="+zi+">" + request.getParameter("t1")+"</font>";//������ݵ�����
  
 
 List  list =( List )application.getAttribute("chat");
 Liaoinfo   li=new Liaoinfo(name,nei);
 if(list==null)
 {
 List  list1=new ArrayList();
 application.setAttribute("chat",list1);
 list1.add(li);
 }
 else
 {
 list.add(li);
 
 } 
  response.sendRedirect("fa.jsp");
   %>
  </body>
</html>
