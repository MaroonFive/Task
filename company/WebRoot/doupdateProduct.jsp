<%@ page language="java" import="java.util.*,service.*,entity.*" pageEncoding="GBK"%>

<html>
  <head>
    
    <title>My JSP 'doupdateProduct.jsp' starting page</title>
   
  </head>
  
  <body>
   <%
   request.setCharacterEncoding("GBK");
   		int id=Integer.parseInt(request.getParameter("hidden"));
   		String serialNumber=request.getParameter("serialNumber"); 
   		serialNumber = new String(serialNumber.getBytes("ISO-8859-1"),"GBK");
   		
   		String productName=request.getParameter("productName");
   		productName = new String(productName.getBytes("ISO-8859-1"),"GBK");
   		
   		String brand=request.getParameter("brand");
   		brand = new String(brand.getBytes("ISO-8859-1"),"GBK");
   		
   		String model=request.getParameter("model");
   		model = new String(model.getBytes("ISO-8859-1"),"GBK");
   		
   		double price=Double.parseDouble(request.getParameter("price"));
   		
   		String tupian=request.getParameter("tupian");
   		
   		String desciption=request.getParameter("desciption");
   		desciption = new String(desciption.getBytes("ISO-8859-1"),"GBK");
   		
   		Product product = new Product();
   		//���ÿ���ı����ֵ
   		product.setProductId(id);
   		product.setSerialNumber(serialNumber);
   		product.setProductName(productName);
   		product.setBrand(brand);
   		product.setModel(model);
   		product.setPrice(price);
   		product.setPicture(tupian);
   		product.setDesciption(desciption);
   		
   		ProductService ps = new ProductService();
   		//��ProductService�����updateProduct���޸ķ�����������ʵ���ำ��num
   		int num=ps.updateProduct(product);
   		//���num>0���޸ĳɹ�
   		if(num>0){
   			response.sendRedirect("manageProduct.jsp");
   		}else{
   		//�����Ի�����ʾ���޸�ʧ��
   		out.print("<script language='javascript'>alert('�޸�ʧ��');</script>");
   		//��ת��manageProduct.jsp��Ʒ����ҳ��
   		response.sendRedirect("manageProduct.jsp");
   		}
    %>
  </body>
</html>
