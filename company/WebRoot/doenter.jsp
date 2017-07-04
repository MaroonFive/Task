<%@ page language="java" import="java.util.*,entity.*,service.*" pageEncoding="GBK"%>

<html>
  <head>
    
    <title>My JSP 'doenter.jsp' starting page</title>

  </head>
  
  <body>
    <%
    	String username=request.getParameter("name");
    	String password=request.getParameter("pass");
    	
    	User user = new User();
    	user.setUserName(username);
    	user.setPassword(password);
    	
    	UsersService us = new UsersService();
    	User users = us.getuser(user);
    	if(users!=null){
    	session.setAttribute("name",username);
    		response.sendRedirect("admin/quan.html");
    	}
    	else{
    		out.print("<script type='text/javascript'>alert('登陆失败,请输入正确的用户名和密码!');</script>"); 
    	    %>
    	   <a style="color:blue; text-decoration: none;" href="admin/login.jsp"> 返回重新登陆</a>
    	    
    	    <% 
    	}
     %>
  </body>
</html>
