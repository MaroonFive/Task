<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="service.ProductService"/>

<html>
  <head>
    
    <title>My JSP 'deleteProduct.jsp' starting page</title>
    
  </head>
  
  <body>
    <%
    request.setCharacterEncoding("GBK");
    int productId=Integer.parseInt(request.getParameter("productId"));//获得managetProduct.jsp里的要删除那列的id
    ProductService ps = new ProductService();//实例化service并调用里面的方法
    int num = ps.deleteProduct(productId);//调用ProductService里的deleteProduct方法传入id并赋给num
    //如果num大于0就说明删除成功了
    if(num>0){
    out.print("<script type='text/javascript'>alert('成功删除一条商品信息');history.place('manageProduct.jsp');</script>");
   		response.sendRedirect("manageProduct.jsp");
    }else{
    out.print("<script type='text/javascript'>alert('商品信息删除失败');history.place('manageProduct.jsp');</script>");
    }
     %>
  </body>
</html>
