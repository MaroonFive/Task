<%@ page language="java" import="java.util.*,service.*" pageEncoding="GBK"%>

<html>
  <head>
    
    <title>My JSP 'zhuyan.jsp' starting page</title>

  </head>
  
  <body background="image/31.jpg">
    <%
    request.setCharacterEncoding("GBK");
    String name=request.getParameter("z1");
    String pwd=request.getParameter("z2");
    Userservice  us=new Userservice();
    int num= us.updateuser(name,pwd);
    if(num>0)
    {
   
    %>
    <center>
    ע��ɹ�<br>
   <a style="color:blue; text-decoration: none;" href="index.jsp"> �����ת����ҳ��½</a>
    
    
    </center>
    
    <% 
    }
    else
    {
    %>
    <center>
    ע��ʧ��
    
    <br>
    <a style="color:blue; text-decoration: none;" href="zhuce.jsp">�������������Ƿ���ȷ</a>
    </center>
    <% 
    
    }
     %>
  </body>
</html>
