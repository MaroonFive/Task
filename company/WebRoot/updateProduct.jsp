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
	<td bgcolor="#666666">�޸���Ʒ��Ϣ</td>
	<td bgcolor="#666666"></td>
	</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ��ţ�</td>
		<td><input type="text" name="serialNumber" value="<%=product.getSerialNumber() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ���ƣ�</td>
		<td bgcolor="#999999"><input type="text" name="productName" value="<%=product.getProductName() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ�̱꣺</td>
		<td bgcolor="#999999"><input type="text" name="brand" value="<%=product.getBrand() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ�ͺţ�</td>
		<td bgcolor="#999999"><input type="text" name="model" value="<%=product.getModel() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ�۸�</td>
		<td bgcolor="#999999"><input type="text" name="price" value="<%=product.getPrice() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��ƷͼƬ��</td>
		<td bgcolor="#999999"><input type="text" name="tupian" value="<%=product.getPicture() %>"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ���ܣ�</td>
		<td><textarea rows="5" cols="28" name="desciption" value="<%=product.getDesciption() %>">
		</textarea></td>
		</tr>
		<tr>
		<td></td>
		<td ><input type="submit" value="�ύ�޸���Ϣ"></td>
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
