<%@ page language="java" import="java.util.*,entity.*,service.*" pageEncoding="GBK"%>

<html>
  <head>
    
    <title>My JSP 'deleteUsers.jsp' starting page</title>
  
  </head>
  
  <body>
    <%
   request.setCharacterEncoding("GBK");//�����е��ַ�ת����GBK��
   int userid = Integer.parseInt(request.getParameter("userid"));
    	
    UsersService us = new UsersService();
    int num = us.deleteUsers(userid);
    	
    if(num>0){
    //�ض���manageUsers.jspҳ��
    	response.sendRedirect("manageUsers.jsp");
    }
    else{
    		%>
    		<%="����" %>
    		<%
    	}
     %>
  </body>
</html>
