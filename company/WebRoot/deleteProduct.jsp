<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="service.ProductService"/>

<html>
  <head>
    
    <title>My JSP 'deleteProduct.jsp' starting page</title>
    
  </head>
  
  <body>
    <%
    request.setCharacterEncoding("GBK");
    int productId=Integer.parseInt(request.getParameter("productId"));//���managetProduct.jsp���Ҫɾ�����е�id
    ProductService ps = new ProductService();//ʵ����service����������ķ���
    int num = ps.deleteProduct(productId);//����ProductService���deleteProduct��������id������num
    //���num����0��˵��ɾ���ɹ���
    if(num>0){
    out.print("<script type='text/javascript'>alert('�ɹ�ɾ��һ����Ʒ��Ϣ');history.place('manageProduct.jsp');</script>");
   		response.sendRedirect("manageProduct.jsp");
    }else{
    out.print("<script type='text/javascript'>alert('��Ʒ��Ϣɾ��ʧ��');history.place('manageProduct.jsp');</script>");
    }
     %>
  </body>
</html>
