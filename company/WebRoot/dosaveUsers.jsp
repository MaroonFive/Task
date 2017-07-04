<%@ page language="java" import="java.util.*,entity.*,service.*" pageEncoding="GBK"%>

<html>
  <head>
    
    <title>My JSP 'dosaveUsers.jsp' starting page</title>
    
  </head>
  	<%
  	request.setCharacterEncoding("GBK");
  	   		String username=request.getParameter("username");
  	   		username =new String(username.getBytes("ISO-8859-1"),"GBK");
  	   		
  	   		String password=request.getParameter("password");
  	   		password = new String(password.getBytes("ISO-8859-1"),"GBK");
  	   		
  	   		User users = new User();
  	   		users.setUserName(username);
  	   		users.setPassword(password);
  	   		
  	   		UsersService us = new UsersService();
  	   		int num=us.saveUsers(users);
  	   		if(num>0){
  	   	response.sendRedirect("manageUsers.jsp");
  	   		}
  	%>
  <body>
   
  </body>
</html>
