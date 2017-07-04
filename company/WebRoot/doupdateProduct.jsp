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
   		//获得每个文本框的值
   		product.setProductId(id);
   		product.setSerialNumber(serialNumber);
   		product.setProductName(productName);
   		product.setBrand(brand);
   		product.setModel(model);
   		product.setPrice(price);
   		product.setPicture(tupian);
   		product.setDesciption(desciption);
   		
   		ProductService ps = new ProductService();
   		//用ProductService层里的updateProduct（修改方法）并传入实体类赋给num
   		int num=ps.updateProduct(product);
   		//如果num>0则修改成功
   		if(num>0){
   			response.sendRedirect("manageProduct.jsp");
   		}else{
   		//弹出对话框提示你修改失败
   		out.print("<script language='javascript'>alert('修改失败');</script>");
   		//跳转到manageProduct.jsp商品管理页面
   		response.sendRedirect("manageProduct.jsp");
   		}
    %>
  </body>
</html>
