<%@ page language="java" import="java.util.*,service.*,entity.*" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<jsp:directive.page import="dao.MessageDAO"/>
<html>
  <head>
    
    <title>±£´æĞÂÁôÑÔ</title>
  </head>
  
  <%
  request.setCharacterEncoding("GBK");
  String name=request.getParameter("name");
  String title=request.getParameter("title");
  String content=request.getParameter("neirong");
	Message me=new Message();
	me.setSendName(name);
	me.setTitle(title);
	me.setContent(content);
	MessageService md=new MessageService();
	int num=md.saveMessage(me);
	if(num>0){
		response.sendRedirect("messageBoard.jsp");
	}else{
		out.print("<script type='text/javascript'>alert('Ìí¼ÓĞÂÁôÑÔÊ§°Ü');history.place('saveMessage.jsp');</script>");
	}
   %>
</html>
