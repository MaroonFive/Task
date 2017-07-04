<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="entity.Liaoinfo"/>

<html>
  <head>
    
    <title>My JSP 'liao.jsp' starting page</title>

    <meta http-equiv="refresh" content="3">
  </head>
  
  <body background="image/31.jpg">
  <%  
    List  list=(List)application.getAttribute("chat");
    
    
    if(list==null)
    {
    response.sendRedirect("liao.jsp");
    }
    else{
    Iterator  it=list.iterator();
 
  while(it.hasNext())
  {
  Liaoinfo  li=(Liaoinfo )it.next();
 
  
  
  %>
   <%=li.getName() %>: 
      <%=li.getNei() %>
       <br>
  <% 
  
  
  }
  }
  
  
  %>
  


  </body>
</html>