<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="service.Userservice"/>
<jsp:directive.page import="entity.User"/>


<html>
  <head>
    
    
    <title>My JSP 'dengyan.jsp' starting page</title>
    
	

    <style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
	left: 269px;
	top: 67px;
}
-->
    </style>
</head>
  
  <body>
   <p>
     <%
     request.setCharacterEncoding("GBK");
     String  name=request.getParameter("t1");
     String pwd=request.getParameter("t2");
     Userservice  us=new Userservice();
     User  user=us.getuser(name,pwd);
     if(user!=null){
     session.setAttribute("name",name);
     response.sendRedirect("index.jsp");
     }
     else
     {
     %>
   </p>
   <div id="Layer1" style="top: 32px; left: 361px;"><img src="image/111.jpg" width="252" height="206"></div>
   <p>&nbsp; </p>
   <p>&nbsp;</p>
   <p>&nbsp;</p>
   <p>&nbsp;</p>
   <center>
    
     
     <p>&nbsp;</p>
     <p>&nbsp;</p>
     <p>��½ʧ�� ��������û����������Ƿ���ȷ<br>
     ��������δ��½<br>
     ������<a style="color:blue; text-decoration: none;" href="">��½</a>
           </p>
   </center>
     <% 
     
     }
     
    %>
  </body>
</html>
