<%@ page language="java" import="java.util.*,entity.*,service.*" pageEncoding="UTF-8"%>

<html>
  <head>
    
    <title>My JSP 'manageAdmin.jsp' starting page</title>
  </head> 
  <body bgcolor="#CCCCCC">
   <table border="1" align="center" cellpadding="0" cellspacing="0">
   <tr>
   <td colspan="3" align="center" bgcolor="#666666">用户管理</td>
   </tr>
  <tr>
  <td width="200" align="center" bgcolor="#FFFFFF">用户名</td>
  <td width="200" align="center" bgcolor="#FFFFFF">身份代码</td>
  <td width="100" align="center" bgcolor="#FFFFFF">删除</td>
  </tr>
    <%
    	UsersService us = new UsersService();
    	List list = us.getUsers();
    	Iterator it = list.iterator();
    	while(it.hasNext()){
    		User users = (User)it.next();
    		%>
    		<tr>
    		<td><%=users.getUserName() %></td>
    		<td><%=users.getStatus()%></td>
    		<td align="center" width="100"><a style="color:blue; text-decoration: none;" href="deleteUsers.jsp?userid=<%=users.getUserId() %>">删除</a></td>
    		</tr>
    		<%
    	}
     %>
  </table>
  </body>
</html>
