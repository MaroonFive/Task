<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="entity.Liaoinfo"/>
<html>
  <head>
    
    <title>My JSP 'User.jsp' starting page</title>
  </head>
  <meta http-equiv="refresh" content="3">
  <body background="image/31.jpg">
  <% List  list=(List)application.getAttribute("yong");
    Iterator  it=list.iterator();
 String name=null;
  while(it.hasNext())
  {
 name =(String)it.next();

  
  
  %>
  <img src="image/QQonline.gif">  ”√ªß:<%=name %>
       
       <br>
  <% 
  
  
  }
   
  
  
  %>
 
    
  </body>
</html>
