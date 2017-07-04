<%@ page language="java" import="java.util.*,service.*,entity.*" pageEncoding="GBK"%>

<html>
  <head>
    
    <title>My JSP 'updateProduct.jsp' starting page</title>
    
  </head>
  
  <body bgcolor="#CCCCCC">
  <form action="doupdateProduct.jsp">
    <% 
    request.setCharacterEncoding("GBK");
    	int productId = Integer.parseInt(request.getParameter("productId")); 
    	 
    	ProductService ps = new ProductService(); 
    	List list = ps.getAllProducts(); 
    	Iterator it = list.iterator(); 
    	while(it.hasNext()){ 
    		Product product = (Product)it.next(); 
    		if(product.getProductId()==productId){ 
    			%>
    			<form action="dosaveProduct.jsp">
	<table border="1" align="center" cellpadding="0" cellspacing="0">
	<input type="hidden" id="h" name="hidden" value="<%=product.getProductId() %>">
	<tr>
	<td bgcolor="#666666">修改商品信息</td>
	<td bgcolor="#666666"></td>
	</tr>
		<tr>
		<td bgcolor="#999999">商品编号：</td>
		<td><input type="text" name="serialNumber" value="<%=product.getSerialNumber() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品名称：</td>
		<td bgcolor="#999999"><input type="text" name="productName" value="<%=product.getProductName() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品商标：</td>
		<td bgcolor="#999999"><input type="text" name="brand" value="<%=product.getBrand() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品型号：</td>
		<td bgcolor="#999999"><input type="text" name="model" value="<%=product.getModel() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品价格：</td>
		<td bgcolor="#999999"><input type="text" name="price" value="<%=product.getPrice() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品图片：</td>
		<td bgcolor="#999999"><input type="text" name="tupian" value="<%=product.getPicture() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品介绍：</td>
		<td><textarea rows="5" cols="28" name="desciption" value="<%=product.getDesciption() %>">
		</textarea></td>
		</tr>
		<tr>
		<td></td>
		<td ><input type="submit" value="提交修改信息"></td>
		</tr>
		</table>
    			
    			<%
    			break;
    		}
    	}
     %>
     </form>
  </body>
</html>
