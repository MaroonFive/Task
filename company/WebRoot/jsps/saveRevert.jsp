<%@ page language="java" import="java.util.*,service.*,entity.*" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
  <head>
    
    <title>My JSP 'saveRevert.jsp' starting page</title>
  </head>
  
  <%
	request.setCharacterEncoding("GBK");
	//int reid = Integer.parseInt(request.getParameter("hidden"));
	int messid=Integer.parseInt(request.getParameter("hidden1"));
	String name=request.getParameter("name");
	String title=request.getParameter("title");
	String conter = request.getParameter("content");	
	
	Revert re=new Revert();
	//re.setMessageId(reid);
	re.setMessageId(messid);
	re.setSendName(name);
	re.setTitle(title);
	re.setContent(conter);
	MessageService mess=new MessageService();
	int count=mess.saveRevert(re);
	if(count>0){
		response.sendRedirect("messageBoard.jsp");
	}else{
		out.print("<script type='text/javascript'>alert('»Ø¸´Ê§°Ü');history.go(-1);</script>");
	}
	
	
%>
</html>
