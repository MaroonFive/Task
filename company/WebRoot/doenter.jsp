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
    		out.print("<script type='text/javascript'>alert('��½ʧ��,��������ȷ���û���������!');</script>"); 
    	    %>
    	   <a style="color:blue; text-decoration: none;" href="admin/login.jsp"> �������µ�½</a>
    	    
    	    <% 
    	}
     %>
  </body>
</html>
