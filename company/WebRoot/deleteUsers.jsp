<%@ page language="java" import="java.util.*,entity.*,service.*" pageEncoding="GBK"%>

<html>
  <head>
    
    <title>My JSP 'deleteUsers.jsp' starting page</title>
  
  </head>
  
  <body>
    <%
   request.setCharacterEncoding("GBK");//经所有的字符转换成GBK的
   int userid = Integer.parseInt(request.getParameter("userid"));
    	
    UsersService us = new UsersService();
    int num = us.deleteUsers(userid);
    	
    if(num>0){
    //重定向到manageUsers.jsp页面
    	response.sendRedirect("manageUsers.jsp");
    }
    else{
    		%>
    		<%="错误" %>
    		<%
    	}
     %>
  </body>
</html>
