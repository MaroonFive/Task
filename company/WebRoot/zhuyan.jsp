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
    注册成功<br>
   <a style="color:blue; text-decoration: none;" href="index.jsp"> 点击跳转到主页登陆</a>
    
    
    </center>
    
    <% 
    }
    else
    {
    %>
    <center>
    注册失败
    
    <br>
    <a style="color:blue; text-decoration: none;" href="zhuce.jsp">请检查您所输入是否正确</a>
    </center>
    <% 
    
    }
     %>
  </body>
</html>
