<%@ page language="java" import="java.util.*,service.*,entity.*" pageEncoding="GBK"%>

<html>
  <head>

    
    <title>My JSP 'dosaveProduct.jsp' starting page</title>
    
  </head>
  
  <body>
   	<%
   		String serialNumber=request.getParameter("serialNumber"); 
   		serialNumber = new String(serialNumber.getBytes("ISO-8859-1"),"GBK");
   		
   		String productName=request.getParameter("productName");
   		productName = new String(productName.getBytes("ISO-8859-1"),"GBK");
   		
   		String brand=request.getParameter("brand");
   		brand = new String(brand.getBytes("ISO-8859-1"),"GBK");
   		
   		String model=request.getParameter("model");
   		model = new String(model.getBytes("ISO-8859-1"),"GBK");
   		
   		double price=Double.parseDouble(request.getParameter("price"));
   		String pic=request.getParameter("pic");
   		pic = new String(pic.getBytes("ISO-8859-1"),"GBK");
   		
   		String desciption=request.getParameter("desciption");
   		desciption = new String(desciption.getBytes("ISO-8859-1"),"GBK");
   		
   		Product product = new Product();
   		product.setSerialNumber(serialNumber);
   		product.setProductName(productName);
   		product.setBrand(brand);
   		product.setModel(model);
   		product.setPrice(price);
   		product.setPicture(pic);
   		product.setDesciption(desciption);
   		
   		ProductService ps = new ProductService();
   		int num=ps.saveProduct(product);
   		if(num>0){
   			response.sendRedirect("manageProduct.jsp");
   		}
    %>
  </body>
</html>
